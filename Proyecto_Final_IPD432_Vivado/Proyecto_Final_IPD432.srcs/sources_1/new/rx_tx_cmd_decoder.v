`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2018 22:20:45
// Design Name: 
// Module Name: rx_tx_cmd_decoder
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


module rx_tx_cmd_decoder(
    input clk,
    
    output reg [1:0] proc_inv,
    
    
    //Recepcion y Envio 
    input rx_ready,
    input [7:0] rx_data,
    input tx_busy,
    output reg tx_start,
    output reg [7:0] tx_data,        
    output reg [7:0] state, 
    
    output reg start,
    input finish,   
    
    //Memoria
    output reg [14:0] add_A0,
    output reg [14:0] add_A1,
    output reg [14:0] add_A2,
    output reg [14:0] add_A3,
    
    output reg [14:0] add_read,
      
    input [7:0] mem_out_A0,
    input [7:0] mem_out_A1,
    input [7:0] mem_out_A2,
    input [7:0] mem_out_A3,
    output reg [7:0] mem_in_A0,
    output reg [7:0] mem_in_A1,
    output reg [7:0] mem_in_A2,
    output reg [7:0] mem_in_A3,
    
    input [7:0] mem_out_LL,
    
    input [7:0] mem_out_LH,
    input [7:0] mem_out_HL,
    input [7:0] mem_out_HH,
    
    output reg we_A0,
    output reg we_A1, 
    output reg we_A2,
    output reg we_A3,
    
    output reg we_A0_2,
    output reg we_A1_2, 
    output reg we_A2_2,
    output reg we_A3_2
    
   
    );
    
    parameter IDLE = 4'd0;
    parameter W_1 = 4'd1;
    parameter W_2 = 4'd2;
    parameter WRITING_A0 = 4'd3;
    parameter WRITING_A2 = 4'd5;
    parameter PROC_UART = 4'd15;
    parameter UART = 4'd14;
    parameter START_WAV = 4'd12;
    parameter WAIT_WAV = 4'd11;
    parameter SEND_WAV = 4'd10;
    
    parameter cero = 15'd0;         
    parameter suma_1 = 15'd1;         
    parameter ADD_TOT = 15'd22500;
   
    
    reg state_tx = 1'd0;         //Estado TX_UART   
    reg [7:0]primer_elemento_A0;    //Necesito volver a guardar el primer elemento????
    reg [7:0]primer_elemento_A1;
    reg [7:0]primer_elemento_A2;
    reg [7:0]primer_elemento_A3;
    reg op_ready = 1'd0;         //Flag Operaciones.
    
    reg [2:0] count_uart = 3'd0;
    reg [31:0] send_data;
    
    reg A0A1 = 1'd0; // 0 = A0, 1 = A1
    reg A2A3 = 1'd0; // 0 = A2, 1 = A3
    
    reg [8:0] col_count = 9'd0;
    reg [8:0] row_count = 9'd0;
    parameter ROWS = 9'd150;
    parameter COL = 9'd300;
    reg [2:0] delay=3'd0;
    
    reg [1:0] imagen = 2'd0; // 0 img 1, 1 watermark
       always @(posedge clk) 
                       
             case (state)             
                IDLE : begin
                    tx_start <= 1'd0;
                    op_ready <= 1'd0; 
                    add_read<= 1'd0;
                    count_uart <= 3'd0;
                    start <= 1'd0;
                    
                    we_A0 <= 1'd0;we_A1 <= 1'd0;
                    we_A2 <= 1'd0;we_A3 <= 1'd0;
                    we_A0_2 <= 1'd0;we_A1_2 <= 1'd0;
                    we_A2_2 <= 1'd0;we_A3_2 <= 1'd0;
                    add_A0 <= cero;add_A1 <= cero;
                    add_A2 <= cero;add_A3 <= cero; 
                    
                    col_count  <= 9'd0;
                    row_count  <= 9'd0;
                    
                    A0A1 = 1'd0; // 0 = A0, 1 = A1
                    A2A3 = 1'd0;
                    delay<=3'd0;
                          
                   if (rx_ready) begin
                      //state <= rx_data;
                      
                      if(rx_data == 8'd1) begin
                        state <= 4'd1;
                        proc_inv <= 2'd0;
                      end
                      else begin
                            if(rx_data == 8'd2) proc_inv <= 2'd1;
                            if(rx_data == 8'd3) proc_inv <= 2'd2;
                            state <= START_WAV;
                      end
                   end
                   else
                      state <= IDLE;
                end
                
                W_1 : begin
                    if(row_count < ROWS) begin
                        state <= WRITING_A0;
                        row_count <= row_count + 9'd1;
                    end
                    else begin
                        if(imagen == 2'd0) begin
                            imagen<=imagen+2'd1;                           
                            state <= IDLE;
                        end
                        else 
                            state <=START_WAV;
                    end
                    if(imagen == 2'd0) begin    
                        we_A0 <= 1'd1;we_A1 <= 1'd1;
                        we_A2 <= 1'd0;we_A3 <= 1'd0;
                    end
                    else begin
                        we_A0_2 <= 1'd0;we_A1_2 <= 1'd0;
                        we_A2_2 <= 1'd1;we_A3_2 <= 1'd1;
                    end
                    
                              
                end
                
                W_2 : begin                    
                    state <= WRITING_A2;
                    if(imagen == 2'd0)  begin
                        we_A0 <= 1'd0;we_A1 <= 1'd0;
                        we_A2 <= 1'd1;we_A3 <= 1'd1;
                    end                    
                    else begin
                        we_A0_2 <= 1'd0;we_A1_2 <= 1'd0;
                        we_A2_2 <= 1'd1;we_A3_2 <= 1'd1;
                    end
                end
                
                  
                WRITING_A0 : begin                
                    if(rx_ready) begin
                        if(col_count < COL-9'd1) begin
                            col_count <= col_count + 9'd1;
                            state  <= WRITING_A0;
                        end                      
                        else begin
                            col_count <= 9'd0;
                            state <= W_2; 
                        end 
                        
                        if(A0A1 == 1'd0) begin
                            if(add_A0 == 11'd0)
                                primer_elemento_A0 <= mem_in_A0; 
                            if(add_A0 == ADD_TOT)
                                mem_in_A0 <= primer_elemento_A0;
                            else begin                           
                                add_A0 <= add_A0 + suma_1;
                                mem_in_A0 <= rx_data;  
                                A0A1 <= 1'd1;
                            end
                        end 
                        else begin                               
                            add_A1 <= add_A1 + suma_1;
                            mem_in_A1 <= rx_data;  
                            A0A1 <= 1'd0; 
                        end                   
                    end 
                    else
                        state <= WRITING_A0;
                end    
                
                WRITING_A2 : begin                
                    if(rx_ready) begin
                        if(col_count < COL-9'd1) begin
                            col_count <= col_count + 9'd1;
                            state  <= WRITING_A2;
                        end                      
                        else begin
                            col_count <= 9'd0;
                            state <= W_1; 
                        end 
                        
                        if(A2A3 == 1'd0) begin                            
                            add_A2 <= add_A2 + suma_1;
                            mem_in_A2 <= rx_data;  
                            A2A3 <= 1'd1;
                        end 
                        else begin                               
                            add_A3 <= add_A3 + suma_1;
                            mem_in_A3 <= rx_data;  
                            A2A3 <= 1'd0; 
                        end                   
                    end 
                    else
                        state <= WRITING_A2;
                end
                
                START_WAV : begin
                    imagen<=2'd0;
                    
                    start <= 1'd1;
                    if(delay < 3'd6)
                        delay <= delay+3'd1;
                    else begin
                        state <= WAIT_WAV;  
                        delay <= 3'd0;
                    end 
                end
                
                WAIT_WAV: begin
                    start <= 1'd0;
                    if(finish)
                        state <= SEND_WAV;
                    else
                        state <= WAIT_WAV; 
                end
                
                SEND_WAV : begin
                
                    if(add_read == cero)
                        add_read <= suma_1; //revisar esto
                    else if(delay < 3'd6)
                        delay <= delay+3'd1;
                    else begin 
                        state_tx <= 1'd0; 
                        tx_start <= 1'd0;
                        count_uart <= 3'd0;
                        
                        /*tx_data[7:0]   <= mem_out_LL;*/
                        send_data[7:0]   <= mem_out_LL;
                        send_data[15:8]  <= mem_out_LH;
                        send_data[23:16] <= mem_out_HL;
                        send_data[31:24] <= mem_out_HH;
                        
                        if(add_read <= 15'd22500) begin //revisar estos numeros
                            add_read <= add_read + suma_1;
                            state <= PROC_UART; 
                        end
                        else begin
                            proc_inv <= 2'd0;
                            state <= IDLE;
                        end
                    end
                end
                
              PROC_UART: begin
                    if(count_uart < 3'd4) begin
                        count_uart <= count_uart + 3'd1;
                        tx_data <= (count_uart == 3'd0) ? send_data[7:0]  :
                                     (count_uart == 3'd1) ? send_data[15:8] :
                                     (count_uart == 3'd2) ? send_data[23:16]:
                                     send_data[31:24]; 
                        state <= UART;
                    end
                    else begin
                        count_uart <= 3'd0;
                        state <= SEND_WAV;
                    end
                end
                
                
                
                UART: begin                   
                    case(state_tx)                  
                        1'b0:  begin
                            tx_start <= 1'b0;
                            state_tx <= 1'b1;                            
                        end
                        1'b1:  begin
                            if(~tx_busy)begin                                                               
                                tx_start <= 1'b1; 
                                state_tx <= 1'd0;
                                state <= PROC_UART;                                      
                            end
                            else begin
                                tx_start <= 1'd0;
                                state_tx <= state_tx;
                            end
                        end
                    endcase
                end
                

                default : begin  // Fault Recovery
                   state <= IDLE;
                end
             endcase

endmodule


