`timescale 1ns / 1ps
`include "macro.vh"
///////////////////////
module top ( clk ,reset ,X ,median );

output [`DATA_LENGTH-1:0] median ;
input [`DATA_LENGTH-1:0] X ;
input clk ,reset ;
reg  flag ;
reg [`DATA_LENGTH-1:0] median;wire  [`DATA_LENGTH-1:0] oldData ;
wire 	[`DATA_LENGTH-1:0] dataOut1 ,dataOut2 ,dataOut3 ,dataOut4 ,dataOut5 ,dataOut6 ,dataOut7 ,dataOut8 ,dataOut9 ,dataOut10 ,dataOut11 ,dataOut12 ,dataOut13 ,dataOut14 ,dataOut15 ,dataOut16 ,dataOut17 ,dataOut18 ,dataOut19 ,dataOut20 ,dataOut21 ,dataOut22 ,dataOut23 ,dataOut24 ,dataOut25 ,dataOut26 ,dataOut27 ,dataOut28 ,dataOut29 ,dataOut30 ,dataOut31 ,dataOut32 ,dataOut33 ,dataOut34 ,dataOut35 ,dataOut36 ,dataOut37 ,dataOut38 ,dataOut39 ,dataOut40 ,dataOut41 ,dataOut42 ,dataOut43 ,dataOut44 ,dataOut45 ,dataOut46 ,dataOut47 ,dataOut48 ,dataOut49 ,dataOut50 ,dataOut51 ,dataOut52 ,dataOut53 ,dataOut54 ,dataOut55 ,dataOut56 ,dataOut57 ,dataOut58 ,dataOut59 ,dataOut60 ,dataOut61 ,dataOut62 ,dataOut63 ,dataOut64 ,dataOut65 ,dataOut66 ,dataOut67 ,dataOut68 ,dataOut69 ,dataOut70 ,dataOut71 ,dataOut72 ,dataOut73 ,dataOut74 ,dataOut75 ,dataOut76 ,dataOut77 ,dataOut78 ,dataOut79 ,dataOut80 ,dataOut81 ,dataOut82 ,dataOut83 ,dataOut84 ,dataOut85 ,dataOut86 ,dataOut87 ,dataOut88 ,dataOut89 ,dataOut90 ,dataOut91 ,dataOut92 ,dataOut93 ,dataOut94 ,dataOut95 ,dataOut96 ,dataOut97 ,dataOut98 ,dataOut99 ,dataOut100;
wire 	 R1 ,R2 ,R3 ,R4 ,R5 ,R6 ,R7 ,R8 ,R9 ,R10 ,R11 ,R12 ,R13 ,R14 ,R15 ,R16 ,R17 ,R18 ,R19 ,R20 ,R21 ,R22 ,R23 ,R24 ,R25 ,R26 ,R27 ,R28 ,R29 ,R30 ,R31 ,R32 ,R33 ,R34 ,R35 ,R36 ,R37 ,R38 ,R39 ,R40 ,R41 ,R42 ,R43 ,R44 ,R45 ,R46 ,R47 ,R48 ,R49 ,R50 ,R51 ,R52 ,R53 ,R54 ,R55 ,R56 ,R57 ,R58 ,R59 ,R60 ,R61 ,R62 ,R63 ,R64 ,R65 ,R66 ,R67 ,R68 ,R69 ,R70 ,R71 ,R72 ,R73 ,R74 ,R75 ,R76 ,R77 ,R78 ,R79 ,R80 ,R81 ,R82 ,R83 ,R84 ,R85 ,R86 ,R87 ,R88 ,R89 ,R90 ,R91 ,R92 ,R93 ,R94 ,R95 ,R96 ,R97 ,R98 ,R99 ,R100;
always @(posedge clk or  posedge reset)
begin
	if(reset)
		flag <= 0;
	else
	begin
		flag <= ~flag ;
		if (flag ==0)
			 median <= (dataOut50 + dataOut51)>>1 ;
	end
end
FIFO  myfifo(.clk(clk) ,.reset(reset) ,.in(X) ,.out(oldData) ,.flag(flag));
medianFilterCell  m1(.X(X) ,.oldData(oldData) ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(0) ,.dataR_in(dataOut2) ,.dataL_in(0) 
	 ,.R_out(R1) ,.data_out(dataOut1)  );
medianFilterCell  m2(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R1) ,.dataR_in(dataOut3) ,.dataL_in(dataOut1) 
	 ,.R_out(R2) ,.data_out(dataOut2)  );
medianFilterCell  m3(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R2) ,.dataR_in(dataOut4) ,.dataL_in(dataOut2) 
	 ,.R_out(R3) ,.data_out(dataOut3)  );
medianFilterCell  m4(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R3) ,.dataR_in(dataOut5) ,.dataL_in(dataOut3) 
	 ,.R_out(R4) ,.data_out(dataOut4)  );
medianFilterCell  m5(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R4) ,.dataR_in(dataOut6) ,.dataL_in(dataOut4) 
	 ,.R_out(R5) ,.data_out(dataOut5)  );
medianFilterCell  m6(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R5) ,.dataR_in(dataOut7) ,.dataL_in(dataOut5) 
	 ,.R_out(R6) ,.data_out(dataOut6)  );
medianFilterCell  m7(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R6) ,.dataR_in(dataOut8) ,.dataL_in(dataOut6) 
	 ,.R_out(R7) ,.data_out(dataOut7)  );
medianFilterCell  m8(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R7) ,.dataR_in(dataOut9) ,.dataL_in(dataOut7) 
	 ,.R_out(R8) ,.data_out(dataOut8)  );
medianFilterCell  m9(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R8) ,.dataR_in(dataOut10) ,.dataL_in(dataOut8) 
	 ,.R_out(R9) ,.data_out(dataOut9)  );
medianFilterCell  m10(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R9) ,.dataR_in(dataOut11) ,.dataL_in(dataOut9) 
	 ,.R_out(R10) ,.data_out(dataOut10)  );
medianFilterCell  m11(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R10) ,.dataR_in(dataOut12) ,.dataL_in(dataOut10) 
	 ,.R_out(R11) ,.data_out(dataOut11)  );
medianFilterCell  m12(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R11) ,.dataR_in(dataOut13) ,.dataL_in(dataOut11) 
	 ,.R_out(R12) ,.data_out(dataOut12)  );
medianFilterCell  m13(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R12) ,.dataR_in(dataOut14) ,.dataL_in(dataOut12) 
	 ,.R_out(R13) ,.data_out(dataOut13)  );
medianFilterCell  m14(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R13) ,.dataR_in(dataOut15) ,.dataL_in(dataOut13) 
	 ,.R_out(R14) ,.data_out(dataOut14)  );
medianFilterCell  m15(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R14) ,.dataR_in(dataOut16) ,.dataL_in(dataOut14) 
	 ,.R_out(R15) ,.data_out(dataOut15)  );
medianFilterCell  m16(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R15) ,.dataR_in(dataOut17) ,.dataL_in(dataOut15) 
	 ,.R_out(R16) ,.data_out(dataOut16)  );
medianFilterCell  m17(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R16) ,.dataR_in(dataOut18) ,.dataL_in(dataOut16) 
	 ,.R_out(R17) ,.data_out(dataOut17)  );
medianFilterCell  m18(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R17) ,.dataR_in(dataOut19) ,.dataL_in(dataOut17) 
	 ,.R_out(R18) ,.data_out(dataOut18)  );
medianFilterCell  m19(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R18) ,.dataR_in(dataOut20) ,.dataL_in(dataOut18) 
	 ,.R_out(R19) ,.data_out(dataOut19)  );
medianFilterCell  m20(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R19) ,.dataR_in(dataOut21) ,.dataL_in(dataOut19) 
	 ,.R_out(R20) ,.data_out(dataOut20)  );
medianFilterCell  m21(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R20) ,.dataR_in(dataOut22) ,.dataL_in(dataOut20) 
	 ,.R_out(R21) ,.data_out(dataOut21)  );
medianFilterCell  m22(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R21) ,.dataR_in(dataOut23) ,.dataL_in(dataOut21) 
	 ,.R_out(R22) ,.data_out(dataOut22)  );
medianFilterCell  m23(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R22) ,.dataR_in(dataOut24) ,.dataL_in(dataOut22) 
	 ,.R_out(R23) ,.data_out(dataOut23)  );
medianFilterCell  m24(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R23) ,.dataR_in(dataOut25) ,.dataL_in(dataOut23) 
	 ,.R_out(R24) ,.data_out(dataOut24)  );
medianFilterCell  m25(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R24) ,.dataR_in(dataOut26) ,.dataL_in(dataOut24) 
	 ,.R_out(R25) ,.data_out(dataOut25)  );
medianFilterCell  m26(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R25) ,.dataR_in(dataOut27) ,.dataL_in(dataOut25) 
	 ,.R_out(R26) ,.data_out(dataOut26)  );
medianFilterCell  m27(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R26) ,.dataR_in(dataOut28) ,.dataL_in(dataOut26) 
	 ,.R_out(R27) ,.data_out(dataOut27)  );
medianFilterCell  m28(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R27) ,.dataR_in(dataOut29) ,.dataL_in(dataOut27) 
	 ,.R_out(R28) ,.data_out(dataOut28)  );
medianFilterCell  m29(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R28) ,.dataR_in(dataOut30) ,.dataL_in(dataOut28) 
	 ,.R_out(R29) ,.data_out(dataOut29)  );
medianFilterCell  m30(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R29) ,.dataR_in(dataOut31) ,.dataL_in(dataOut29) 
	 ,.R_out(R30) ,.data_out(dataOut30)  );
medianFilterCell  m31(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R30) ,.dataR_in(dataOut32) ,.dataL_in(dataOut30) 
	 ,.R_out(R31) ,.data_out(dataOut31)  );
medianFilterCell  m32(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R31) ,.dataR_in(dataOut33) ,.dataL_in(dataOut31) 
	 ,.R_out(R32) ,.data_out(dataOut32)  );
medianFilterCell  m33(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R32) ,.dataR_in(dataOut34) ,.dataL_in(dataOut32) 
	 ,.R_out(R33) ,.data_out(dataOut33)  );
medianFilterCell  m34(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R33) ,.dataR_in(dataOut35) ,.dataL_in(dataOut33) 
	 ,.R_out(R34) ,.data_out(dataOut34)  );
medianFilterCell  m35(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R34) ,.dataR_in(dataOut36) ,.dataL_in(dataOut34) 
	 ,.R_out(R35) ,.data_out(dataOut35)  );
medianFilterCell  m36(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R35) ,.dataR_in(dataOut37) ,.dataL_in(dataOut35) 
	 ,.R_out(R36) ,.data_out(dataOut36)  );
medianFilterCell  m37(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R36) ,.dataR_in(dataOut38) ,.dataL_in(dataOut36) 
	 ,.R_out(R37) ,.data_out(dataOut37)  );
medianFilterCell  m38(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R37) ,.dataR_in(dataOut39) ,.dataL_in(dataOut37) 
	 ,.R_out(R38) ,.data_out(dataOut38)  );
medianFilterCell  m39(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R38) ,.dataR_in(dataOut40) ,.dataL_in(dataOut38) 
	 ,.R_out(R39) ,.data_out(dataOut39)  );
medianFilterCell  m40(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R39) ,.dataR_in(dataOut41) ,.dataL_in(dataOut39) 
	 ,.R_out(R40) ,.data_out(dataOut40)  );
medianFilterCell  m41(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R40) ,.dataR_in(dataOut42) ,.dataL_in(dataOut40) 
	 ,.R_out(R41) ,.data_out(dataOut41)  );
medianFilterCell  m42(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R41) ,.dataR_in(dataOut43) ,.dataL_in(dataOut41) 
	 ,.R_out(R42) ,.data_out(dataOut42)  );
medianFilterCell  m43(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R42) ,.dataR_in(dataOut44) ,.dataL_in(dataOut42) 
	 ,.R_out(R43) ,.data_out(dataOut43)  );
medianFilterCell  m44(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R43) ,.dataR_in(dataOut45) ,.dataL_in(dataOut43) 
	 ,.R_out(R44) ,.data_out(dataOut44)  );
medianFilterCell  m45(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R44) ,.dataR_in(dataOut46) ,.dataL_in(dataOut44) 
	 ,.R_out(R45) ,.data_out(dataOut45)  );
medianFilterCell  m46(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R45) ,.dataR_in(dataOut47) ,.dataL_in(dataOut45) 
	 ,.R_out(R46) ,.data_out(dataOut46)  );
medianFilterCell  m47(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R46) ,.dataR_in(dataOut48) ,.dataL_in(dataOut46) 
	 ,.R_out(R47) ,.data_out(dataOut47)  );
medianFilterCell  m48(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R47) ,.dataR_in(dataOut49) ,.dataL_in(dataOut47) 
	 ,.R_out(R48) ,.data_out(dataOut48)  );
medianFilterCell  m49(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R48) ,.dataR_in(dataOut50) ,.dataL_in(dataOut48) 
	 ,.R_out(R49) ,.data_out(dataOut49)  );
medianFilterCell  m50(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R49) ,.dataR_in(dataOut51) ,.dataL_in(dataOut49) 
	 ,.R_out(R50) ,.data_out(dataOut50)  );
medianFilterCell  m51(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R50) ,.dataR_in(dataOut52) ,.dataL_in(dataOut50) 
	 ,.R_out(R51) ,.data_out(dataOut51)  );
medianFilterCell  m52(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R51) ,.dataR_in(dataOut53) ,.dataL_in(dataOut51) 
	 ,.R_out(R52) ,.data_out(dataOut52)  );
medianFilterCell  m53(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R52) ,.dataR_in(dataOut54) ,.dataL_in(dataOut52) 
	 ,.R_out(R53) ,.data_out(dataOut53)  );
medianFilterCell  m54(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R53) ,.dataR_in(dataOut55) ,.dataL_in(dataOut53) 
	 ,.R_out(R54) ,.data_out(dataOut54)  );
medianFilterCell  m55(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R54) ,.dataR_in(dataOut56) ,.dataL_in(dataOut54) 
	 ,.R_out(R55) ,.data_out(dataOut55)  );
medianFilterCell  m56(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R55) ,.dataR_in(dataOut57) ,.dataL_in(dataOut55) 
	 ,.R_out(R56) ,.data_out(dataOut56)  );
medianFilterCell  m57(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R56) ,.dataR_in(dataOut58) ,.dataL_in(dataOut56) 
	 ,.R_out(R57) ,.data_out(dataOut57)  );
medianFilterCell  m58(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R57) ,.dataR_in(dataOut59) ,.dataL_in(dataOut57) 
	 ,.R_out(R58) ,.data_out(dataOut58)  );
medianFilterCell  m59(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R58) ,.dataR_in(dataOut60) ,.dataL_in(dataOut58) 
	 ,.R_out(R59) ,.data_out(dataOut59)  );
medianFilterCell  m60(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R59) ,.dataR_in(dataOut61) ,.dataL_in(dataOut59) 
	 ,.R_out(R60) ,.data_out(dataOut60)  );
medianFilterCell  m61(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R60) ,.dataR_in(dataOut62) ,.dataL_in(dataOut60) 
	 ,.R_out(R61) ,.data_out(dataOut61)  );
medianFilterCell  m62(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R61) ,.dataR_in(dataOut63) ,.dataL_in(dataOut61) 
	 ,.R_out(R62) ,.data_out(dataOut62)  );
medianFilterCell  m63(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R62) ,.dataR_in(dataOut64) ,.dataL_in(dataOut62) 
	 ,.R_out(R63) ,.data_out(dataOut63)  );
medianFilterCell  m64(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R63) ,.dataR_in(dataOut65) ,.dataL_in(dataOut63) 
	 ,.R_out(R64) ,.data_out(dataOut64)  );
medianFilterCell  m65(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R64) ,.dataR_in(dataOut66) ,.dataL_in(dataOut64) 
	 ,.R_out(R65) ,.data_out(dataOut65)  );
medianFilterCell  m66(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R65) ,.dataR_in(dataOut67) ,.dataL_in(dataOut65) 
	 ,.R_out(R66) ,.data_out(dataOut66)  );
medianFilterCell  m67(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R66) ,.dataR_in(dataOut68) ,.dataL_in(dataOut66) 
	 ,.R_out(R67) ,.data_out(dataOut67)  );
medianFilterCell  m68(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R67) ,.dataR_in(dataOut69) ,.dataL_in(dataOut67) 
	 ,.R_out(R68) ,.data_out(dataOut68)  );
medianFilterCell  m69(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R68) ,.dataR_in(dataOut70) ,.dataL_in(dataOut68) 
	 ,.R_out(R69) ,.data_out(dataOut69)  );
medianFilterCell  m70(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R69) ,.dataR_in(dataOut71) ,.dataL_in(dataOut69) 
	 ,.R_out(R70) ,.data_out(dataOut70)  );
medianFilterCell  m71(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R70) ,.dataR_in(dataOut72) ,.dataL_in(dataOut70) 
	 ,.R_out(R71) ,.data_out(dataOut71)  );
medianFilterCell  m72(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R71) ,.dataR_in(dataOut73) ,.dataL_in(dataOut71) 
	 ,.R_out(R72) ,.data_out(dataOut72)  );
medianFilterCell  m73(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R72) ,.dataR_in(dataOut74) ,.dataL_in(dataOut72) 
	 ,.R_out(R73) ,.data_out(dataOut73)  );
medianFilterCell  m74(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R73) ,.dataR_in(dataOut75) ,.dataL_in(dataOut73) 
	 ,.R_out(R74) ,.data_out(dataOut74)  );
medianFilterCell  m75(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R74) ,.dataR_in(dataOut76) ,.dataL_in(dataOut74) 
	 ,.R_out(R75) ,.data_out(dataOut75)  );
medianFilterCell  m76(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R75) ,.dataR_in(dataOut77) ,.dataL_in(dataOut75) 
	 ,.R_out(R76) ,.data_out(dataOut76)  );
medianFilterCell  m77(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R76) ,.dataR_in(dataOut78) ,.dataL_in(dataOut76) 
	 ,.R_out(R77) ,.data_out(dataOut77)  );
medianFilterCell  m78(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R77) ,.dataR_in(dataOut79) ,.dataL_in(dataOut77) 
	 ,.R_out(R78) ,.data_out(dataOut78)  );
medianFilterCell  m79(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R78) ,.dataR_in(dataOut80) ,.dataL_in(dataOut78) 
	 ,.R_out(R79) ,.data_out(dataOut79)  );
medianFilterCell  m80(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R79) ,.dataR_in(dataOut81) ,.dataL_in(dataOut79) 
	 ,.R_out(R80) ,.data_out(dataOut80)  );
medianFilterCell  m81(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R80) ,.dataR_in(dataOut82) ,.dataL_in(dataOut80) 
	 ,.R_out(R81) ,.data_out(dataOut81)  );
medianFilterCell  m82(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R81) ,.dataR_in(dataOut83) ,.dataL_in(dataOut81) 
	 ,.R_out(R82) ,.data_out(dataOut82)  );
medianFilterCell  m83(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R82) ,.dataR_in(dataOut84) ,.dataL_in(dataOut82) 
	 ,.R_out(R83) ,.data_out(dataOut83)  );
medianFilterCell  m84(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R83) ,.dataR_in(dataOut85) ,.dataL_in(dataOut83) 
	 ,.R_out(R84) ,.data_out(dataOut84)  );
medianFilterCell  m85(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R84) ,.dataR_in(dataOut86) ,.dataL_in(dataOut84) 
	 ,.R_out(R85) ,.data_out(dataOut85)  );
medianFilterCell  m86(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R85) ,.dataR_in(dataOut87) ,.dataL_in(dataOut85) 
	 ,.R_out(R86) ,.data_out(dataOut86)  );
medianFilterCell  m87(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R86) ,.dataR_in(dataOut88) ,.dataL_in(dataOut86) 
	 ,.R_out(R87) ,.data_out(dataOut87)  );
medianFilterCell  m88(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R87) ,.dataR_in(dataOut89) ,.dataL_in(dataOut87) 
	 ,.R_out(R88) ,.data_out(dataOut88)  );
medianFilterCell  m89(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R88) ,.dataR_in(dataOut90) ,.dataL_in(dataOut88) 
	 ,.R_out(R89) ,.data_out(dataOut89)  );
medianFilterCell  m90(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R89) ,.dataR_in(dataOut91) ,.dataL_in(dataOut89) 
	 ,.R_out(R90) ,.data_out(dataOut90)  );
medianFilterCell  m91(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R90) ,.dataR_in(dataOut92) ,.dataL_in(dataOut90) 
	 ,.R_out(R91) ,.data_out(dataOut91)  );
medianFilterCell  m92(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R91) ,.dataR_in(dataOut93) ,.dataL_in(dataOut91) 
	 ,.R_out(R92) ,.data_out(dataOut92)  );
medianFilterCell  m93(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R92) ,.dataR_in(dataOut94) ,.dataL_in(dataOut92) 
	 ,.R_out(R93) ,.data_out(dataOut93)  );
medianFilterCell  m94(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R93) ,.dataR_in(dataOut95) ,.dataL_in(dataOut93) 
	 ,.R_out(R94) ,.data_out(dataOut94)  );
medianFilterCell  m95(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R94) ,.dataR_in(dataOut96) ,.dataL_in(dataOut94) 
	 ,.R_out(R95) ,.data_out(dataOut95)  );
medianFilterCell  m96(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R95) ,.dataR_in(dataOut97) ,.dataL_in(dataOut95) 
	 ,.R_out(R96) ,.data_out(dataOut96)  );
medianFilterCell  m97(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R96) ,.dataR_in(dataOut98) ,.dataL_in(dataOut96) 
	 ,.R_out(R97) ,.data_out(dataOut97)  );
medianFilterCell  m98(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R97) ,.dataR_in(dataOut99) ,.dataL_in(dataOut97) 
	 ,.R_out(R98) ,.data_out(dataOut98)  );
medianFilterCell  m99(.X(X) ,.oldData(oldData)  ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R98) ,.dataR_in(dataOut100) ,.dataL_in(dataOut98) 
	 ,.R_out(R99) ,.data_out(dataOut99)  );
medianFilterCell  m100(.X(X) ,.oldData(oldData) ,.flag(flag),.reset(reset) ,.clk(clk) ,.R_in(R99),.dataR_in(0) ,.dataL_in(dataOut99) 
	 ,.R_out(R100)  ,.data_out(dataOut100));


endmodule