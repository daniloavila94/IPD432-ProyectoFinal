`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2018 22:07:45
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module main(
    input clk_100M,reset_n,uart_rx,
    output uart_tx,tx_busy,uart_tx_usb,
    output [15:0] LED,    
    output [7:0]       siete_segmentos,
    output [7:0]       display
    
    );   
   
   wire [31:0] bcd;
   reg [1:0] reset_sr;
   wire reset = reset_sr[1]; 
   assign uart_tx_usb = uart_tx;
   wire rst,rx_ready,/*tx_busy,*/tx_start;
   wire [7:0] rx_data;
   wire[7:0] tx_data;
   
   always @(posedge clk_100M)
          reset_sr <= {reset_sr[0], ~reset_n};

    
    uart_basic #(
            .CLK_FREQUENCY(100000000),
            .BAUD_RATE(115200)
        ) uart_basic_inst (
            .clk(clk_100M),
            .reset(reset),
            .rx(uart_rx),
            .rx_data(rx_data),
            .rx_ready(rx_ready),
            .tx(uart_tx),
            .tx_start(tx_start),
            .tx_data(tx_data),
            .tx_busy(tx_busy)
    );
   
    
 // Direcciones de memoria
  wire [14:0] add_A0,add_A1,add_A2,add_A3, // Pixeles Imagenes Sin Modificar
              add_read_band,add_inv, // Direcciones  transformadas de wavelet
              add_read,add_LL,add_LL_3,
              add_read_inv;   
  
  // Habilitacion escritura
  wire we_A0,we_A1,we_A2,we_A3,we_LL,we_LH,we_HL,we_HH,we_inv;
  wire we_A0_2,we_A1_2,we_A2_2,we_A3_2;                 
  
  // Datos de memoria
  //Datos a escribir en memoria, pixeles originales, sub bandas de wavelet, transformada wavelet inversa.
  wire [7:0] mem_in_A0,mem_in_A1,mem_in_A2,mem_in_A3,mem_in_A0_inv,mem_in_A1_inv,mem_in_A2_inv,mem_in_A3_inv; 
  wire [7:0] mem_in_LL,mem_in_LH,mem_in_HL,mem_in_HH; //Imagen host
  wire [7:0] mem_in_LL_2,mem_in_LH_2,mem_in_HL_2,mem_in_HH_2; // Imagen watermark
  wire [7:0] mem_in_LL_3,mem_in_LH_3,mem_in_HL_3,mem_in_HH_3; // Imagen marcada
  
  //Datos leidos desde memoria, pixeles originales, sub bandas de wavelet, transformada de wavelet inversa.
  wire [7:0] mem_out_A0,mem_out_A1,mem_out_A2,mem_out_A3,mem_out_LL,mem_out_LH,mem_out_HL,mem_out_HH,mem_out_A0_inv,mem_out_A1_inv,mem_out_A2_inv,mem_out_A3_inv;          
  wire [7:0] mem_out_A0_2,mem_out_A1_2,mem_out_A2_2,mem_out_A3_2,mem_out_LL_2,mem_out_LH_2,mem_out_HL_2,mem_out_HH_2;
  wire [7:0] mem_out_LL_3,mem_out_LH_3,mem_out_HL_3,mem_out_HH_3; // Imagen Marcada

  //Flags, inicio calculo de transformada de wavelet, termino calculo transformada de wavelet, inicio calculo transformada inversa y termino calculo transformada
  //inversa
  wire start,finish,start_inv,finish_inv;  
  
  wire [1:0] proc_inv; // Que se desea realizar, obtener imagen host original, marca de agua o imagen con watermark.
  
  //Estado Procesador
  wire [7:0] state; 
  wire [7:0] estado; 
  
  


/////////////////////////////////////////////////////////////////////////////////////////////////
//                    DECODIFICACION DE COMANDOS Y CONTROL TX y RX                             //
/////////////////////////////////////////////////////////////////////////////////////////////////

rx_tx_cmd_decoder DECODER(
            /* TX y RX */
           .clk(clk_100M),.rx_ready(rx_ready),.rx_data(rx_data),.tx_busy(tx_busy),
           .tx_data(tx_data), .tx_start(tx_start),.state(state),
           
           /* Memorias */
           .we_A0(we_A0) , .we_A1(we_A1), .we_A2(we_A2), .we_A3(we_A3),
           .we_A0_2(we_A0_2) , .we_A1_2(we_A1_2), .we_A2_2(we_A2_2), .we_A3_2(we_A3_2),
           .add_A0(add_A0),.add_A1(add_A1),.add_A2(add_A2),.add_A3(add_A3),.add_read(add_read_inv),
           .mem_out_A0(mem_out_A0),.mem_out_A1(mem_out_A1),.mem_out_A2(mem_out_A2),.mem_out_A3(mem_out_A3),
           .mem_in_A0(mem_in_A0),.mem_in_A1(mem_in_A1),.mem_in_A2(mem_in_A2),.mem_in_A3(mem_in_A3),
           
           /*Proceso y Envio Wavelet*/
           .start(start), .finish(finish_inv), .proc_inv(proc_inv),
           .mem_out_LL(mem_out_A0_inv), .mem_out_LH(mem_out_A1_inv), .mem_out_HL(mem_out_A2_inv), .mem_out_HH(mem_out_A3_inv)
           ); 

/////////////////////////////////////////////////////////////////////////////////////////////////
//                         Calculo Transformada de Wavelet                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////


haar_wavelet TRANSFORMADA_DE_HAAR(
    .clk(clk_100M),  
    .state(estado),
      
    //Comienzo y termino
    .start(start),.finish(finish),.proc_inv(proc_inv),
    
    //Lecturas memoria
    .we_LL(we_LL),.add_LL(add_LL), .add_LL_3(add_LL_3), .add_read(add_read), 
    
    // Pixeles para Calcular transformada de wavelet
    .mem_out_A0(mem_out_A0), .mem_out_A1(mem_out_A1), .mem_out_A2(mem_out_A2), .mem_out_A3(mem_out_A3),    
    .mem_out_A0_2(mem_out_A0_2), .mem_out_A1_2(mem_out_A1_2), .mem_out_A2_2(mem_out_A2_2), .mem_out_A3_2(mem_out_A3_2), 
    
    // Resultados de la transformada de wavelet
    .mem_in_LL(mem_in_LL),.mem_in_LH(mem_in_LH),.mem_in_HL(mem_in_HL),.mem_in_HH(mem_in_HH),    
    .mem_in_LL_2(mem_in_LL_2),.mem_in_LH_2(mem_in_LH_2),.mem_in_HL_2(mem_in_HL_2),.mem_in_HH_2(mem_in_HH_2),    
    .mem_in_LL_3(mem_in_LL_3),.mem_in_LH_3(mem_in_LH_3),.mem_in_HL_3(mem_in_HL_3),.mem_in_HH_3(mem_in_HH_3) 
     );


/////////////////////////////////////////////////////////////////////////////////////////////////
//                         Calculo Transformada de Wavelet Inversa                             //
/////////////////////////////////////////////////////////////////////////////////////////////////

// Estos assign se usan simplemente para saber si se quiere sacar la transformada inversa de la imagen marcada, imagen host o imagen watermark.
wire [7:0] inv_LL,inv_LH,inv_HL,inv_HH;
assign inv_LL = proc_inv == 2'd2 ? mem_out_LL_2 : mem_out_LL_3;
assign inv_LH = proc_inv == 2'd2 ? mem_out_LH_2 : mem_out_LH_3;
assign inv_HL = proc_inv == 2'd2 ? {mem_out_HL_3[2:0],5'd0} : mem_out_HL_3;
assign inv_HH = proc_inv == 2'd2 ? mem_out_HH_2 : mem_out_HH_3;

haar_wavelet_inversa HAAR_INV(
    .clk(clk_100M),
    
    // Comienzo y Termino
    .start(finish),.finish_inv(finish_inv),
    
    //Escritura y lectura de memorias
    .we_inv(we_inv),.add_read(add_read_band),.add_inv(add_inv),
    
    //Pixeles para el calculo de la transformada inversa
    .mem_out_LL(inv_LL), .mem_out_LH(inv_LH), .mem_out_HL(inv_HL), .mem_out_HH(inv_HH),
    
    //Resultado de la transformada inversa
    .mem_in_A0_inv(mem_in_A0_inv) , .mem_in_A1_inv(mem_in_A1_inv), .mem_in_A2_inv(mem_in_A2_inv), .mem_in_A3_inv(mem_in_A3_inv)    
);     
     
               
     assign LED[7:0] = estado;
//////////////////////////////////////////////////////////////////////////////////////////////////
//                                      MEMORIAS IMAGEN HOST                                    //
//////////////////////////////////////////////////////////////////////////////////////////////////



BRAM MEMORIA_A0 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_A0),      // input wire [0 : 0] wea
  .addra(add_A0),  // input wire [10 : 0] addra
  .dina(mem_in_A0),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read),  // input wire [10 : 0] addrb
  .doutb(mem_out_A0)  // output wire [7 : 0] doutb
);

BRAM MEMORIA_A1 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_A1),      // input wire [0 : 0] wea
  .addra(add_A1),  // input wire [10 : 0] addra
  .dina(mem_in_A1),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read),  // input wire [10 : 0] addrb
  .doutb(mem_out_A1)  // output wire [7 : 0] doutb
);

BRAM MEMORIA_A2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_A2),      // input wire [0 : 0] wea
  .addra(add_A2),  // input wire [10 : 0] addra
  .dina(mem_in_A2),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read),  // input wire [10 : 0] addrb
  .doutb(mem_out_A2)  // output wire [7 : 0] doutb
);

BRAM MEMORIA_A3 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_A3),      // input wire [0 : 0] wea
  .addra(add_A3),  // input wire [10 : 0] addra
  .dina(mem_in_A3),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read),  // input wire [10 : 0] addrb
  .doutb(mem_out_A3)  // output wire [7 : 0] doutb
);

//////////////////////////////////////////////////////////////////////////////////////////////////
//                                      MEMORIAS IMAGEN WATERMARK                               //
//////////////////////////////////////////////////////////////////////////////////////////////////

BRAM MEMORIA_A0_2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_A0_2),      // input wire [0 : 0] wea
  .addra(add_A0),  // input wire [10 : 0] addra
  .dina(mem_in_A0),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read),  // input wire [10 : 0] addrb
  .doutb(mem_out_A0_2)  // output wire [7 : 0] doutb
);

BRAM MEMORIA_A1_2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_A1_2),      // input wire [0 : 0] wea
  .addra(add_A1),  // input wire [10 : 0] addra
  .dina(mem_in_A1),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read),  // input wire [10 : 0] addrb
  .doutb(mem_out_A1_2)  // output wire [7 : 0] doutb
);

BRAM MEMORIA_A2_2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_A2_2),      // input wire [0 : 0] wea
  .addra(add_A2),  // input wire [10 : 0] addra
  .dina(mem_in_A2),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read),  // input wire [10 : 0] addrb
  .doutb(mem_out_A2_2)  // output wire [7 : 0] doutb
);

BRAM MEMORIA_A3_2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_A3_2),      // input wire [0 : 0] wea
  .addra(add_A3),  // input wire [10 : 0] addra
  .dina(mem_in_A3),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read),  // input wire [10 : 0] addrb
  .doutb(mem_out_A3_2)  // output wire [7 : 0] doutb
);

//////////////////////////////////////////////////////////////////////////////////////////////////
//                                    SUB-BANDAS IMAGEN WATERMARK                               //
//////////////////////////////////////////////////////////////////////////////////////////////////

BRAM BANDA_LL_2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_LL),      // input wire [0 : 0] wea
  .addra(add_LL),  // input wire [10 : 0] addra
  .dina(mem_in_LL_2),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_band),  // input wire [10 : 0] addrb
  .doutb(mem_out_LL_2)  // output wire [7 : 0] doutb
);

BRAM BANDA_LH_2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_LL),      // input wire [0 : 0] wea
  .addra(add_LL),  // input wire [10 : 0] addra
  .dina(mem_in_LH_2),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_band),  // input wire [10 : 0] addrb
  .doutb(mem_out_LH_2)  // output wire [7 : 0] doutb
);

BRAM BANDA_HL_2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_LL),      // input wire [0 : 0] wea
  .addra(add_LL),  // input wire [10 : 0] addra
  .dina(mem_in_HL_2),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_band),  // input wire [10 : 0] addrb
  .doutb(mem_out_HL_2)  // output wire [7 : 0] doutb
);

BRAM BANDA_HH_2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_LL),      // input wire [0 : 0] wea
  .addra(add_LL),  // input wire [10 : 0] addra
  .dina(mem_in_HH_2),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_band),  // input wire [10 : 0] addrb
  .doutb(mem_out_HH_2)  // output wire [7 : 0] doutb
);

//////////////////////////////////////////////////////////////////////////////////////////////////
//                                    SUB-BANDAS IMAGEN MARCADA                                 //
//////////////////////////////////////////////////////////////////////////////////////////////////

BRAM BANDA_LL_3 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_LL),      // input wire [0 : 0] wea
  .addra(add_LL_3),  // input wire [10 : 0] addra
  .dina(mem_in_LL_3),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_band),  // input wire [10 : 0] addrb
  .doutb(mem_out_LL_3)  // output wire [7 : 0] doutb
);

BRAM BANDA_LH_3 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_LL),      // input wire [0 : 0] wea
  .addra(add_LL_3),  // input wire [10 : 0] addra
  .dina(mem_in_LH_3),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_band),  // input wire [10 : 0] addrb
  .doutb(mem_out_LH_3)  // output wire [7 : 0] doutb
);

BRAM BANDA_HL_3 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_LL),      // input wire [0 : 0] wea
  .addra(add_LL_3),  // input wire [10 : 0] addra
  .dina(mem_in_HL_3),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_band),  // input wire [10 : 0] addrb
  .doutb(mem_out_HL_3)  // output wire [7 : 0] doutb
);

BRAM BANDA_HH_3 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_LL),      // input wire [0 : 0] wea
  .addra(add_LL_3),  // input wire [10 : 0] addra
  .dina(mem_in_HH_3),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_band),  // input wire [10 : 0] addrb
  .doutb(mem_out_HH_3)  // output wire [7 : 0] doutb
);


//////////////////////////////////////////////////////////////////////////////////////////////////
//                                   PIXELES RESULTADO WAVELET INVERSA                           //
//////////////////////////////////////////////////////////////////////////////////////////////////

BRAM MEMORIA_A0_REC_2 (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_inv),      // input wire [0 : 0] wea
  .addra(add_inv),  // input wire [10 : 0] addra
  .dina(mem_in_A0_inv),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_inv),  // input wire [10 : 0] addrb
  .doutb(mem_out_A0_inv)  // output wire [7 : 0] doutb
);

BRAM MEMORIA_A1_REC (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_inv),      // input wire [0 : 0] wea
  .addra(add_inv),  // input wire [10 : 0] addra
  .dina(mem_in_A1_inv),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_inv),  // input wire [10 : 0] addrb
  .doutb(mem_out_A1_inv)  // output wire [7 : 0] doutb
);

BRAM MEMORIA_A2_REC (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_inv),      // input wire [0 : 0] wea
  .addra(add_inv),  // input wire [10 : 0] addra
  .dina(mem_in_A2_inv),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_inv),  // input wire [10 : 0] addrb
  .doutb(mem_out_A2_inv)  // output wire [7 : 0] doutb
);

BRAM MEMORIA_A3_REC (
  .clka(clk_100M),    // input wire clka
  .ena(1'd1),      // input wire ena
  .wea(we_inv),      // input wire [0 : 0] wea
  .addra(add_inv),  // input wire [10 : 0] addra
  .dina(mem_in_A3_inv),    // input wire [7 : 0] dina
  .clkb(clk_100M),    // input wire clkb
  .enb(1'd1),      // input wire enb
  .addrb(add_read_inv),  // input wire [10 : 0] addrb
  .doutb(mem_out_A3_inv)  // output wire [7 : 0] doutb
);


//////////////////////////////////////////////////////////////////////////////////////////////////
//                               DISPLAY 7 SEGMENTOS                                            //
//////////////////////////////////////////////////////////////////////////////////////////////////    
    unsigned_to_bcd u32_to_bcd_inst (
        .clk(clk_100M),
        .trigger(1'b1),
        .in({24'd0,state}),
        //.in(32'd1023),
        .idle(),
        .bcd(bcd)
);

	wire clk_ss;
	clk_divider #(.O_CLK_FREQ(480)
	) clk_div_ss_display (
		.clk_in(clk_100M),
		.reset(1'b0),
		.clk_out(clk_ss)
);

	/* Multiplexor para display de 7 segmentos */
	display_mux display_mux_inst (
		.clk(clk_ss),
		.clk_enable(1'b1),
		.bcd(bcd),
		.dots(1'b0),
		.is_negative(1'b0),
		.turn_off(1'b0),
		.ss_value(siete_segmentos),
		.ss_select(display)
);



endmodule

