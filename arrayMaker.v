module arrayMaker (
  input wire [15:0] currentTime,
  output wire [127:0] data_t
); 
wire [3:0]first = 4'b1111;
wire [3:0]second = 4'b1111;
wire [3:0]third = 4'b1111;
wire [3:0]fourth = 4'b1111;
reg [127:0] data = 127'hFFFFFFFF;
assign data_t = data;
assign first[3:0] = currentTime[15:12];
assign second[3:0] = currentTime[11:8];
assign third[3:0] = currentTime[7:4];
assign fourth[3:0] = currentTime[3:0];

always @(currentTime)
begin
	case(first)
		4'h0 : begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b1110;
				data[95:92]   <= 4'b1010;
				data[79:76]   <= 4'b1010;
				data[63:60]   <= 4'b1010;
				data[47:44]   <= 4'b1110;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
		4'h1 :  begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b0010;
				data[95:92]   <= 4'b0110;
				data[79:76]   <= 4'b1010;
				data[63:60]   <= 4'b0010;
				data[47:44]   <= 4'b0010;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
		4'h2 :  begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b1110;
				data[95:92]   <= 4'b0010;
				data[79:76]   <= 4'b1110;
				data[63:60]   <= 4'b1000;
				data[47:44]   <= 4'b1110;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
		4'h3 : begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b1110;
				data[95:92]   <= 4'b0010;
				data[79:76]   <= 4'b0110;
				data[63:60]   <= 4'b0010;
				data[47:44]   <= 4'b1110;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
		4'h4 : begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b1010;
				data[95:92]   <= 4'b1010;
				data[79:76]   <= 4'b1110;
				data[63:60]   <= 4'b0010;
				data[47:44]   <= 4'b0010;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
		4'h5 : begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b1110;
				data[95:92]   <= 4'b1000;
				data[79:76]   <= 4'b1110;
				data[63:60]   <= 4'b0010;
				data[47:44]   <= 4'b1110;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
		4'h6 : begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b1110;
				data[95:92]   <= 4'b1000;
				data[79:76]   <= 4'b1110;
				data[63:60]   <= 4'b1010;
				data[47:44]   <= 4'b1110;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
		4'h7 : begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b1110;
				data[95:92]   <= 4'b0010;
				data[79:76]   <= 4'b0110;
				data[63:60]   <= 4'b0100;
				data[47:44]   <= 4'b0100;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
		4'h8 : begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b1110;
				data[95:92]   <= 4'b1010;
				data[79:76]   <= 4'b1110;
				data[63:60]   <= 4'b1010;
				data[47:44]   <= 4'b1110;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
		4'h9 : begin
				data[127:124] <= 4'b0000;
				data[111:108] <= 4'b1110;
				data[95:92]   <= 4'b1010;
				data[79:76]   <= 4'b1110;
				data[63:60]   <= 4'b0010;
				data[47:44]   <= 4'b1110;
				data[31:28]   <= 4'b0000;
				data[15:12]   <= 4'b0000;
				end
	endcase
	case(second)
		4'h0 : begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b1110;
				data[91:88]   <= 4'b1010;
				data[75:72]   <= 4'b1010;
				data[59:56]   <= 4'b1010;
				data[43:40]   <= 4'b1110;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
		4'h1 :  begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b0010;
				data[91:88]   <= 4'b0110;
				data[75:72]   <= 4'b1010;
				data[59:56]   <= 4'b0010;
				data[43:40]   <= 4'b0010;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
		4'h2 :  begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b1110;
				data[91:88]   <= 4'b0010;
				data[75:72]   <= 4'b1110;
				data[59:56]   <= 4'b1000;
				data[43:40]   <= 4'b1110;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
		4'h3 : begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b1110;
				data[91:88]   <= 4'b0010;
				data[75:72]   <= 4'b0110;
				data[59:56]   <= 4'b0010;
				data[43:40]   <= 4'b1110;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
		4'h4 : begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b1010;
				data[91:88]   <= 4'b1010;
				data[75:72]   <= 4'b1110;
				data[59:56]   <= 4'b0010;
				data[43:40]   <= 4'b0010;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
		4'h5 : begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b1110;
				data[91:88]   <= 4'b1000;
				data[75:72]   <= 4'b1110;
				data[59:56]   <= 4'b0010;
				data[43:40]   <= 4'b1110;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
		4'h6 : begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b1110;
				data[91:88]   <= 4'b1000;
				data[75:72]   <= 4'b1110;
				data[59:56]   <= 4'b1010;
				data[43:40]   <= 4'b1110;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
		4'h7 : begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b1110;
				data[91:88]   <= 4'b0010;
				data[75:72]   <= 4'b0110;
				data[59:56]   <= 4'b0100;
				data[43:40]   <= 4'b0100;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
		4'h8 : begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b1110;
				data[91:88]   <= 4'b1010;
				data[75:72]   <= 4'b1110;
				data[59:56]   <= 4'b1010;
				data[43:40]   <= 4'b1110;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
		4'h9 : begin
				data[123:120] <= 4'b0000;
				data[107:104] <= 4'b1110;
				data[91:88]   <= 4'b1010;
				data[75:72]   <= 4'b1110;
				data[59:56]   <= 4'b0010;
				data[43:40]   <= 4'b1110;
				data[27:24]   <= 4'b0000;
				data[11:8]    <= 4'b0000;
				end
//format from now on
	endcase
    case(third)
		4'h0 : begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b1110;
				data[87:84]   <= 4'b1010;
				data[71:68]   <= 4'b1010;
				data[55:52]   <= 4'b1010;
				data[39:36]   <= 4'b1110;
				data[23:20]   <= 4'b0000;
				data[7:4]    <= 4'b0000;
				end
		4'h1 :  begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b0010;
				data[87:84]   <= 4'b0110;
				data[71:68]   <= 4'b1010;
				data[55:52]   <= 4'b0010;
				data[39:36]   <= 4'b0010;
				data[23:20]   <= 4'b0000;
				data[7:4]   <= 4'b0000;
				end
		4'h2 :  begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b1110;
				data[87:84]   <= 4'b0010;
				data[71:68]   <= 4'b1110;
				data[55:52]   <= 4'b1000;
				data[39:36]   <= 4'b1110;
				data[23:20]   <= 4'b0000;
				data[7:4]   <= 4'b0000;
				end
		4'h3 : begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b1110;
				data[87:84]   <= 4'b0010;
				data[71:68]   <= 4'b0110;
				data[55:52]   <= 4'b0010;
				data[39:36]   <= 4'b1110;
				data[23:20]   <= 4'b0000;
				data[7:4]   <= 4'b0000;
				end
		4'h4 : begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b1010;
				data[87:84]   <= 4'b1010;
				data[71:68]   <= 4'b1110;
				data[55:52]   <= 4'b0010;
				data[39:36]   <= 4'b0010;
				data[23:20]   <= 4'b0000;
				data[7:4]   <= 4'b0000;
				end
		4'h5 : begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b1110;
				data[87:84]   <= 4'b1000;
				data[71:68]   <= 4'b1110;
				data[55:52]   <= 4'b0010;
				data[39:36]   <= 4'b1110;
				data[23:20]   <= 4'b0000;
				data[7:4]   <= 4'b0000;
				end
		4'h6 : begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b1110;
				data[87:84]   <= 4'b1000;
				data[71:68]   <= 4'b1110;
				data[55:52]   <= 4'b1010;
				data[39:36]   <= 4'b1110;
				data[23:20]   <= 4'b0000;
				data[7:4]   <= 4'b0000;
				end
		4'h7 : begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b1110;
				data[87:84]   <= 4'b0010;
				data[71:68]   <= 4'b0110;
				data[55:52]   <= 4'b0100;
				data[39:36]   <= 4'b0100;
				data[23:20]   <= 4'b0000;
				data[7:4]   <= 4'b0000;
				end
		4'h8 : begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b1110;
				data[87:84]   <= 4'b1010;
				data[71:68]   <= 4'b1110;
				data[55:52]   <= 4'b1010;
				data[39:36]   <= 4'b1110;
				data[23:20]   <= 4'b0000;
				data[7:4]   <= 4'b0000;
				end
		4'h9 : begin
				data[119:116] <= 4'b0000;
				data[103:100] <= 4'b1110;
				data[87:84]   <= 4'b1010;
				data[71:68]   <= 4'b1110;
				data[55:52]   <= 4'b0010;
				data[39:36]   <= 4'b1110;
				data[23:20]   <= 4'b0000;
				data[7:4]   <= 4'b0000;
				end

	endcase
	case(fourth)
		4'h0 : begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b1110;
				data[83:80]   <= 4'b1010;
				data[67:64]   <= 4'b1010;
				data[51:48]   <= 4'b1010;
				data[35:32]   <= 4'b1110;
				data[19:16]   <= 4'b0000;
				data[3:0]    <= 4'b0000;
				end
		4'h1 :  begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b0010;
				data[83:80]   <= 4'b0110;
				data[67:64]   <= 4'b1010;
				data[51:48]   <= 4'b0010;
				data[35:32]   <= 4'b0010;
				data[19:16]   <= 4'b0000;
				data[3:0]   <= 4'b0000;
				end
		4'h2 :  begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b1110;
				data[83:80]   <= 4'b0010;
				data[67:64]   <= 4'b1110;
				data[51:48]   <= 4'b1000;
				data[35:32]   <= 4'b1110;
				data[19:16]   <= 4'b0000;
				data[3:0]   <= 4'b0000;
				end
		4'h3 : begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b1110;
				data[83:80]   <= 4'b0010;
				data[67:64]   <= 4'b0110;
				data[51:48]   <= 4'b0010;
				data[35:32]   <= 4'b1110;
				data[19:16]   <= 4'b0000;
				data[3:0]   <= 4'b0000;
				end
		4'h4 : begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b1010;
				data[83:80]   <= 4'b1010;
				data[67:64]   <= 4'b1110;
				data[51:48]   <= 4'b0010;
				data[35:32]   <= 4'b0010;
				data[19:16]   <= 4'b0000;
				data[3:0]   <= 4'b0000;
				end
		4'h5 : begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b1110;
				data[83:80]   <= 4'b1000;
				data[67:64]   <= 4'b1110;
				data[51:48]   <= 4'b0010;
				data[35:32]   <= 4'b1110;
				data[19:16]   <= 4'b0000;
				data[3:0]   <= 4'b0000;
				end
		4'h6 : begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b1110;
				data[83:80]   <= 4'b1000;
				data[67:64]   <= 4'b1110;
				data[51:48]   <= 4'b1010;
				data[35:32]   <= 4'b1110;
				data[19:16]   <= 4'b0000;
				data[3:0]   <= 4'b0000;
				end
		4'h7 : begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b1110;
				data[83:80]   <= 4'b0010;
				data[67:64]   <= 4'b0110;
				data[51:48]   <= 4'b0100;
				data[35:32]   <= 4'b0100;
				data[19:16]   <= 4'b0000;
				data[3:0]   <= 4'b0000;
				end
		4'h8 : begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b1110;
				data[83:80]   <= 4'b1010;
				data[67:64]   <= 4'b1110;
				data[51:48]   <= 4'b1010;
				data[35:32]   <= 4'b1110;
				data[19:16]   <= 4'b0000;
				data[3:0]   <= 4'b0000;
				end
		4'h9 : begin
				data[115:112] <= 4'b0000;
				data[99:96] <= 4'b1110;
				data[83:80]   <= 4'b1010;
				data[67:64]   <= 4'b1110;
				data[51:48]   <= 4'b0010;
				data[35:32]   <= 4'b1110;
				data[19:16]   <= 4'b0000;
				data[3:0]   <= 4'b0000;
				end


	endcase
end
endmodule