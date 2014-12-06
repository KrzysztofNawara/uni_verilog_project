module screen (
  input wire clk,
  input wire [127:0] data,
  output wire [15:0] columns,
  output wire [7:0] rows
);  
reg number = 0;
reg [15:0] r_columns = 16'hFFFF;
reg [7:0] r_rows = 8'hFF;
assign columns = r_columns;
assign rows = r_rows;
always @(posedge clk)
begin
	if(number > 129)
	begin
		number <= 1;
	end
		case(number)
		1   : r_columns[15:0] <= data[127:112];
		2   : r_columns[15:0] <= data[111:96];
		4   : r_columns[15:0] <= data[95:80];
		8   : r_columns[15:0] <= data[79:64];
		16  : r_columns[15:0] <= data[63:48];
		32  : r_columns[15:0] <= data[47:32];
		64  : r_columns[15:0] <= data[31:16];
		128 : r_columns[15:0] <= data[15:0];
	endcase
	r_rows <= number;
	number <= number * 2;
end
endmodule
