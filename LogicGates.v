`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Monali Sinare
// 
// Create Date: 08/01/2023 08:08:48 AM
// Design Name: Logic gates 
// Module Name: LogicGates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Following is the code for 4 logic gates NOT, AND, OR and XOR
//There are two select lines to select the gate
//              The select bits are varied to change the gate selection
//              Sel = 00 for NOT
//              Sel = 01 for AND
//              Sel = 10 for OR
//              Sel = 11 for XOR   
//Also, there are three types of modeling used, gate level, data flow and behavioural
//At a time any two models are disabled 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LogicGates(
    input[1:0] sel,
    input A,B,
    output reg Y
    );
    
 
 /*
 //Gate level modelling    
    
 wire Y_not, Y_AND, Y_OR, Y_XOR;
    
 not i0(Y_not, A);     //not gate implementation
 and i1(Y_AND, A, B);  // AND gate implementation
 or i2(Y_OR, A, B);    //OR gate implementation
 xor i3(Y_XOR, A, B);  //XOR gate implementation 
    
 always @(sel, Y_not, Y_AND, Y_OR, Y_XOR)
 begin
  case(sel)
    2'b00: Y = Y_not;       //select not gate output
    2'b01: Y = Y_AND;      //select AND gate output
    2'b10: Y = Y_OR;       //select OR gate output
    2'b11: Y = Y_XOR;      //select XOR gate output 
  endcase 
 end 
 */
 
 /*
 //Dataflow modeling
 always @(sel, A, B)
 begin
  case(sel)
    2'b00: Y = ~A;       // not gate implementation
    2'b01: Y = A & B;      //AND gate implementation
    2'b10: Y = A | B;       //OR gate implementation
    2'b11: Y = A ^ B;      //XOR gate implementation 
  endcase 
 end 
 */
 
 //behavioral modeling
 always @(sel, A, B)
 begin
  case(sel)
    //Not gate
    2'b00: 
        if(A == 1'b1)
            Y = 1'b0;       
        else
            Y = 1'b1;
    //AND gate
    2'b01: 
        if(A == 1'b1 && B == 1'b1)
            Y = 1'b1;
        else
            Y = 1'b0;
    //OR gate
    2'b10: 
        if(A==1'b1 || B == 1'b1)
            Y = 1'b1;
        else
            Y = 1'b0;
    //XOR gate    
    2'b11: 
        if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        Y = 1'b0;
        else
        Y = 1'b1; 
  endcase 
 end    
endmodule
