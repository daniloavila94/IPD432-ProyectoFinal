`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2018 22:23:41
// Design Name: 
// Module Name: haar_wavelet
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


module haar_wavelet(
    input clk,
    
    //Comienzo y termino
    input start,
    output reg finish,
    output reg [7:0] state,
    //Memoria
    output reg [14:0] add_LL,
    
    output reg [14:0] add_LL_3,
        
    output reg [14:0] add_read,
      
    input [7:0] mem_out_A0,
    input [7:0] mem_out_A1,
    input [7:0] mem_out_A2,
    input [7:0] mem_out_A3,
    
    output reg [9:0] mem_in_LL,    
    output reg [9:0] mem_in_LH,
    output reg [9:0] mem_in_HL,
    output reg [9:0] mem_in_HH,
    
    
    input [7:0] mem_out_A0_2,
    input [7:0] mem_out_A1_2,
    input [7:0] mem_out_A2_2,
    input [7:0] mem_out_A3_2,
    
    output reg [9:0] mem_in_LL_2,    
    output reg [9:0] mem_in_LH_2,
    output reg [9:0] mem_in_HL_2,
    output reg [9:0] mem_in_HH_2,
    
    
    output reg [9:0] mem_in_LL_3,    
    output reg [9:0] mem_in_LH_3,
    output reg [9:0] mem_in_HL_3,
    output reg [9:0] mem_in_HH_3,
    
    output reg we_LL,
    
    input [1:0] proc_inv
   
    );
    
    parameter IDLE = 4'd0;
    parameter LECTURA = 4'd1;
    parameter ESCRITURA = 4'd2;
    parameter FINISH = 4'd3;
    parameter WATERMARK = 4'd4;
    
    
    parameter cero = 15'd0;         
    parameter suma_1 = 15'd1;         
    parameter ADD_TOT = 15'd22500;

    
    reg [7:0]primer_elemento_LL;    //Necesito volver a guardar el primer elemento????
    reg [2:0] delay=3'd0;
    
    reg [9:0] aux_A0,aux_A1,aux_A2,aux_A3;
    reg [9:0] aux_A0_2,aux_A1_2,aux_A2_2,aux_A3_2;
    reg [9:0] aux_LL;
    
    
       always @(posedge clk) 
                       
             case (state)             
                IDLE : begin
                    finish <= 1'd0; 
                    add_read<= 15'd0;
                    add_LL<= 15'd0;
                    add_LL_3<= 15'd0;
                    we_LL <= 1'd0;
                    
                
                    
                    delay<=3'd0;
                          
                   if (start) begin
                        if(proc_inv == 2'd0) 
                            state <= LECTURA;
                        else
                            state <= FINISH;
                   end
                   else
                      state <= IDLE;
                end
                
                LECTURA : begin
                    we_LL <= 1'd1;                
                    if(add_read == cero)
                        add_read <= suma_1;
                    else if(delay < 3'd6)
                        delay = delay+3'd1;
                    else begin                        
                        
                        aux_A0 <= mem_out_A0;
                        aux_A1 <= mem_out_A1;
                        aux_A2 <= mem_out_A2;
                        aux_A3 <= mem_out_A3; 
                        
                        aux_A0_2 <= mem_out_A0_2;
                        aux_A1_2 <= mem_out_A1_2;
                        aux_A2_2 <= mem_out_A2_2;
                        aux_A3_2 <= mem_out_A3_2;       
                        
                                        
                        //mem_in_LL   <= (mem_out_A0+mem_out_A1+mem_out_A2+mem_out_A3)>>2;
                       if(add_read <= 15'd22501) begin //REVISAR ESTO
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
                   /* if(add_LL == 11'd0)
                        primer_elemento_LL <= mem_in_LL; 
                    if(add_LL == ADD_TOT)
                        mem_in_LL <= primer_elemento_LL;
                    else   */
                        if(add_read >= 15'd3)                         
                            add_LL <= add_LL + suma_1;
                            
                        mem_in_LL  <= (aux_A0+aux_A1+aux_A2+aux_A3)>>2;                        
                        mem_in_LH  <= (aux_A1+aux_A2+aux_A3-aux_A0)>>2;                                                
                       
                        if(aux_A0+aux_A1 >= aux_A2+aux_A3)
                            mem_in_HL  <= 0;
                        else
                            mem_in_HL  <= (aux_A2+aux_A3-aux_A0-aux_A1)>>2;
                            
                        if(aux_A1+aux_A2 >= aux_A0+aux_A3)
                            mem_in_HH  <= 0;
                        else
                            mem_in_HH  <= (aux_A0+aux_A3-aux_A1-aux_A2)>>2; 
                            
                            
                            
                        mem_in_LL_2  <= (aux_A0_2+aux_A1_2+aux_A2_2+aux_A3_2)>>2;                        
                        mem_in_LH_2  <= (aux_A1_2+aux_A2_2+aux_A3_2-aux_A0_2)>>2;                                                
                        
                        if(aux_A0_2+aux_A1_2 >= aux_A2_2+aux_A3_2)
                            mem_in_HL_2  <= 0;
                        else
                            mem_in_HL_2  <= (aux_A2_2+aux_A3_2-aux_A0_2-aux_A1_2)>>2;
                            
                        if(aux_A1_2+aux_A2_2 >= aux_A0_2+aux_A3_2)
                            mem_in_HH_2  <= 0;
                        else
                            mem_in_HH_2  <= (aux_A0_2+aux_A3_2-aux_A1_2-aux_A2_2)>>2;             
                        
                        
                        //WATERMARK                                              
                        //state <= LECTURA;
                        state <= WATERMARK;                      
                        
                end
                
                WATERMARK: begin
                    if(add_read >= 15'd3)                         
                        add_LL_3 <= add_LL_3 + suma_1;
                    mem_in_LL_3 <= mem_in_LL;
                    mem_in_LH_3 <= mem_in_LH;
                    mem_in_HL_3 <= {mem_in_HL[7:3],mem_in_HL_2[7:5]};
                    mem_in_HH_3 <= mem_in_HH;
                    state  <= LECTURA;
                
                end
                
                FINISH : begin
                    finish <= 1'd1;
                    if(delay < 3'd6)
                        delay <= delay+3'd1;
                    else begin
                        finish <= 1'd0;                        
                        add_read<= 15'd0; 
                        state <= IDLE;
                    end
                end
                
                default : begin  // Fault Recovery
                   state <= IDLE;
                end
             endcase


endmodule

