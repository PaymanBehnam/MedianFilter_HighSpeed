							

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {control_leftMst}}
module control_rightMst (Ti, Ti_L, Yi, Z_L, s );

	output  [1:0] s;
	reg [1:0] s;
	input Ti, Ti_L, Yi, Z_L;
	
	always @ (Ti, Ti_L, Yi, Z_L)
	begin	
		case ({Ti, Ti_L, Yi, Z_L})						
			4'b1101, 4'b1001:
			begin
				s[1:0] <= 2'b00;												
			end
						
			4'b0001, 4'b1000, 4'b0010, 4'b1010:
			begin
				s[1:0] <= 2'b01;												
			end
													
			4'b1100, 4'b1110:
			begin
				s[1:0] <= 2'b10;												
			end
							   
			default:
			begin
				s[1:0] <= 2'b00;
			end
		endcase	
	end 


endmodule
