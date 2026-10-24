`timescale 1ns / 1ps
module tb_vending_machine();
   reg clk,rst,cancel;
   reg[4:0]x;
   reg[3:0]select;
   wire y1,y2,y3,y4;
   wire[5:0]return;
   wire[4:0]ps1,ns1;
   
   vending_machine uut(.clk(clk),.rst(rst),.cancel(cancel),.x(x),.select(select),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.return(return),.ps1(ps1),.ns1(ns1));
   initial clk=0;
   always #10 clk=~clk;
   initial begin
   rst=1;
   #50;
   
   rst=0;
   select=0;
   #20;x=10;
   #20;x=10;
   #20 cancel=1;
   #20;cancel=0;
   #20;x=10;

   #20;x=10;
   #20;x=10;
   
   #20;
   
   select=2;
   #20;x=10;
   #20;x=10;
   #20;x=10;
   #20;x=10;
   
   #500 ;$finish;
   end
endmodule
