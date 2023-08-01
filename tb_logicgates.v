`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Monali Sinare
// 
// Create Date: 08/01/2023 12:13:30 PM
// Design Name: 
// Module Name: tb_logicgates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Following is the testbench for testing NOT, AND, PR and XOR gates
//              The select bits are varied to change the gate selection
//              Sel = 00 for NOT
//              Sel = 01 for AND
//              Sel = 10 for OR
//              Sel = 11 for XOR        
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_logicgates;

reg A, B;
reg [1:0] sel;
wire Y;


LogicGates u0(sel, A, B, Y);

initial
begin

A = 1'b0;
B = 1'b0;
sel = 2'b00;

#10
//Not gate test
A = 1'b1;
#1
$display("Not gate result for A = %0b is Y = %0b", A, Y);
#10
A = 1'b0;
#1
$display("Not gate result for A = %0b is Y = %0b", A, Y);

#10
//And gate test
sel = 2'b01;
A = 1'b0;
B = 1'b0;
#1
$display("AND gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);
#10
A = 1'b0;
B = 1'b1;
#1
$display("AND gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);
#10
A = 1'b1;
B = 1'b0;
#1
$display("AND gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);
#10
A = 1'b1;
B = 1'b1;
#1
$display("AND gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);

#10
//OR gate test
sel = 2'b10;
A = 1'b0;
B = 1'b0;
#1
$display("OR gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);
#10
A = 1'b0;
B = 1'b1;
#1
$display("OR gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);
#10
A = 1'b1;
B = 1'b0;
#1
$display("OR gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);
#10
A = 1'b1;
B = 1'b1;
#1
$display("OR gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);

#10
//XOR gate test
sel = 2'b11;
A = 1'b0;
B = 1'b0;
#1
$display("XOR gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);
#10
A = 1'b0;
B = 1'b1;
#1
$display("XOR gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);
#10
A = 1'b1;
B = 1'b0;
#1
$display("XOR gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);
#10
A = 1'b1;
B = 1'b1;
#1
$display("XOR gate result for A = %0b and B = %0b is Y = %0b", A, B, Y);

$stop;
end
endmodule
