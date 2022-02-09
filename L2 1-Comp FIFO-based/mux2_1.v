/-------------------------------------------
`timescale 1 ns / 1 ps	  
`include "macro.vh"

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {mux2_1}}
module mux2_1 ( in1 ,in2 ,out, select );

output [`DATA_LENGTH-1:0] out ;
input [`DATA_LENGTH-1:0] in1 ;
input [`DATA_LENGTH-1:0] in2 ; 
input select;

assign out = (select)? in2: in1;				   			   		 

//}} End of automatically maintained section

// -- Enter your statements here -- //

endmodule
