`timescale 1ns / 1ps
module vending_machine(
    input clk,rst,cancel,
    input [4:0] x,
    input [3:0] select,
    output reg y1,y2,y3,y4,
    output reg [5:0] return,
    output reg [4:0] ps1,ns1);
    parameter s0=0,
              s1=1,
              s2=2,
              s3=3,
              s4=4,
              s5=5,
              s6=6,
              s7=7,
              s8=8,
              s9=9,
              s10=10,
              s11=11,
              s12=12,
              s13=13,
              s14=14,
              s15=15,
              s16=16,
              s17=17,
              s18=18;
        always@(posedge clk)
        begin
          if(rst==1) 
            ps1<=s0;
           
          else
            ps1<= ns1;
        end
        always@(*)
        begin
         case(ps1)
          s0:begin
            if(select==0)
              ns1<=s1;
            else if(select==1)
                ns1<=s2;
            else if(select==2)
                ns1<=s3;
            else if(select==3)
                  ns1<= s4;
            else 
                  ns1<=s0;
                  return<=0;      
                  y1<=0;
                  y2<=0;
                  y3<=0;
                  y4<=0;
             end
     //for tea
      s1: begin
        if(x==10)
          ns1<=s5;
        else if (x==20)
          ns1<=s6;
        else
          ns1<=s1;  
          y1<=0;
          y2<=0;
          y3<=0;
          y4<=0;
      end 
       s5: begin
        if(cancel==1)
          begin
            return<=10;
            ns1<=s0;
          end
          else
          begin
        if(x==10)
           ns1<=s6;
        else if (x==20)
           ns1<=s7;
        else
           ns1<=s5;   
           y1<=0;
           y2<=0;
           y3<=0;
           y4<=0;
      end
      end 
      s6: begin
       if(cancel==1)
          begin
            return<=20;
            ns1<=s0;
          end
          else begin
        if(x==10)
           ns1<=s7;
        else if (x==20) begin
           return<=10;
           ns1<=s7;end 
        else
           ns1<=s6;   
           y1<=0;
           y2<=0;
           y3<=0;
           y4<=0;
      end end
      s7: begin
         if(cancel==1)begin
           return<=30;
           ns1<=s0;end
         else
           ns1<=s0;
           y1<=1;
           y2<=0;
           y3<=0;
           y4<=0;
      end 
      //for coffee
      s2:begin
        if(x==10)
          ns1<=s8;
        else if(x==20)
          ns1<=s9;
        else
          ns1<=s2;
           y1<=0;
           y2<=0;
           y3<=0;
           y4<=0;
      end 
      s8: begin
        if(cancel==1)
          begin
            return<=10;
            ns1<=s0;
          end
          else begin
         if(x==10)
          ns1<=s9;
        else if(x==20)
          ns1<=s10;
        else
          ns1<=s8;  
          y1<=0;
          y2<=0;
          y3<=0;
          y4<=0;
      end end
      s9:begin
          if(cancel==1)
          begin
            return<=20;
            ns1<=s0;
          end
          else begin
         if(x==10)
           ns1<=s10;
        else if(x==20)
           ns1<=s11;
        else
           ns1<=s9;   
           y1<=0;
           y2<=0;
           y3<=0;
           y4<=0;
      end end
      s10:begin
        if(cancel==1)begin
          return<=30;
          ns1<=s0;end
          else begin
         if(x==10)
          ns1<=s11;
         else if(x==20)begin
           ns1<=s11;
           return<=10;end
         else
           ns1<=s10;
           y1<=0;
           y2<=0;
           y3<=0;
           y4<=0;
      end end
      s11: begin
        if(cancel==1)begin
        ns1<=s0;
        return<=40;end
        else
         ns1<=s0;
        y1<=0;
        y2<=1;
        y3<=0;
        y4<=0;
      end
      s3:begin
        if(x==10)
          ns1<=s12;
        else if(x==20)
          ns1<=s13;
        else
          ns1<=s3;
            y1<=0;
           y2<=0;
           y3<=0;
           y4<=0;
      end 
      s12: begin
        if(cancel==1)
          begin
            return<=10;
            ns1<=s0;
          end
          else begin
         if(x==10)
          ns1<=s13;
        else if(x==20)
          ns1<=s14;
        else
          ns1<=s12;
          y1<=0;
          y2<=0;
          y3<=0;
          y4<=0;
      end end
            s13:begin
          if(cancel==1)
          begin
            return<=20;
            ns1<=s0;
          end
          else begin
        if(x==10)
           ns1<=s14;
        else if(x==20)
           ns1<=s15;
        else
           ns1<=s13;
           y1<=0;
           y2<=0;
           y3<=0;
           y4<=0;
      end end
      s14:begin 
        if(cancel==1)begin
         return<=30;
         ns1<=s0;end
         else begin
         if(x==10)
          ns1<=s15;
        else if(x==20)begin
          ns1<=s15;
          return<=10;end
        else
          ns1<=s14;  
          y1<=0;
           y2<=0;
           y3<=0;
           y4<=0;
      end end
      s15: begin
        if(cancel==1) begin
          return<=40;
          ns1<=s0;end
        else
          ns1<=s0;  
        y1<=0;
        y2<=0;
        y3<=1;
        y4<=0;
      end
       s4: begin
        if(x==10)
          ns1<=s16;
        else if (x==20)
          ns1<=s17;
        else
          ns1<=s4;
          y1<=0;
          y2<=0;
           y3<=0;
           y4<=0;
      end 
      s16: begin
        if(cancel==1)
          begin
            return<=10;
            ns1<=s0;
          end
          else begin
        if(x==10)
           ns1<=s17;
        else if (x==20)
           ns1<=s18;
        else
           ns1<=s16;
           y1<=0;
           y2<=0;
           y3<=0;
           y4<=0;
      end end 
      s17:begin
       if(cancel==1) begin
         return<=20;
         ns1<=s0;end
         else begin
       if(x==10)
         ns1<=s18;
       else if(x==20)begin
         return<=10;
         ns1<=s18;end
       else
         ns1<=s17;
         y1<=0;
         y2<=0;
         y3<=0;
         y4<=0;
      end 
      end
      s18:begin
        if(cancel==1)begin
          return<=30;
          ns1<=s0;end
        else
          ns1<=s0;
          y1<=0;
         y2<=0;
         y3<=0;
         y4<=1; 
       end
    endcase
    end
endmodule
