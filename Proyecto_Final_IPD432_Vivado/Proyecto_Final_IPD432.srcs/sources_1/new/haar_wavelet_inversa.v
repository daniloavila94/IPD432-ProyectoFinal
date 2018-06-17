`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2018 22:23:52
// Design Name: 
// Module Name: haar_wavelet_inversa
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


module haar_wavelet_inversa(
    input clk, 
    
    
    input start,
    output reg finish_inv,   
    

    
    output reg [14:0] add_read,
    
    input [11:0] mem_out_LL,    
    input [11:0] mem_out_LH,
    input [11:0] mem_out_HL,
    input [11:0] mem_out_HH,
    
    output reg [14:0] add_inv,
    output reg we_inv,

    output reg [7:0] mem_in_A0_inv,
    output reg [7:0] mem_in_A1_inv,
    output reg [7:0] mem_in_A2_inv,
    output reg [7:0] mem_in_A3_inv
   
    );
    
    parameter IDLE = 4'd0;
    parameter LECTURA = 4'd1;
    parameter ESCRITURA = 4'd2;
    parameter FINISH = 4'd3;
    
    
    parameter cero = 15'd0;         
    parameter suma_1 = 15'd1;         
    parameter ADD_TOT = 15'd22500;
   
    
    reg [7:0]primer_elemento_LL;    //Necesito volver a guardar el primer elemento????
    reg [2:0] delay=3'd0;
    
    reg [3:0] state = 4'd0;
    
    always @(posedge clk) 
                           
                 case (state)             
                    IDLE : begin
                        finish_inv <= 1'd0; 
                        add_read<= 15'd0; 
                        we_inv<= 1'd0;
                        add_inv<= 15'd0;
                        
                        delay<=3'd0;
                              
                       if (start) begin
                          state <= LECTURA;
                          we_inv <= 1'd1;
                       end
                       else
                          state <= IDLE;
                    end
                    
                    LECTURA : begin
                        if(add_read == cero)
                            add_read <= suma_1; //revisar esto
                        else if(delay < 3'd6)
                            delay <= delay+3'd1;
                        else begin                           
                            
                           
                            mem_in_A0_inv <= (mem_out_LL > mem_out_LH) ? (mem_out_LL-mem_out_LH)<<1 : 0;
                            mem_in_A1_inv <= (mem_out_LH > mem_out_HL) ? (mem_out_LH-mem_out_HL)<<1 : 0;
                            mem_in_A2_inv <= (mem_out_LL-mem_out_LH+mem_out_HL-mem_out_HH > 0) ? (mem_out_LL-mem_out_LH+mem_out_HL-mem_out_HH)<<1 : 0;
                            mem_in_A3_inv <= (mem_out_LH > mem_out_HH) ? (mem_out_LH-mem_out_HH)<<1 : 0;
                            
                            if(add_read <= 15'd22500) begin //revisar estos numeros
                                add_read <= add_read + suma_1;
                                state <= ESCRITURA; 
                            end
                            else begin
                                state <= FINISH;
                                delay <= 3'd0;
                            end
                        end
                    end
                    
                    
                    
                    ESCRITURA : begin           
                            add_inv <= add_inv + 15'd1; 
                            state <= LECTURA;
                    end
                    
                    FINISH : begin
                        finish_inv <= 1'd1;
                        if(delay < 3'd6)
                            delay <= delay+3'd1;
                        else begin
                            finish_inv <= 1'd0;                        
                            add_read<= 15'd0; 
                            add_inv <= 0;
                            state <= IDLE;
                        end
                    end
                    
                    default : begin  // Fault Recovery
                       state <= IDLE;
                    end
                 endcase
                   
endmodule
