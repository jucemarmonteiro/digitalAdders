// Copyright {2011} {Jucemar Monteiro - jucemar.monteiro@gmail.com}
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//-----------------------------------------------------
// Design Name : a1csa128bits
// File Name   : a1csa128bits.v
// Function    : Add One Carry Select Adder for 128 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
module a1csa128bits (cin,a,b,s,cout);
	parameter n = 128;
	parameter m = 32;

	input  cin;
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  cout;

	wire [m-2:0] carry,prop,sel;

	cra4bits a1csa_0 (.cin(cin),.a(a[3:0]),.b(b[3:0]),.s(s[3:0]),.cout(sel[0]));
	a1csa a1csa_1 (.sel(sel[0]),.a(a[7:4]),.b(b[7:4]),.s(s[7:4])
			,.gen(carry[0]),.prop(prop[0]));
	a1csa a1csa_2 (.sel(sel[1]),.a(a[11:8]),.b(b[11:8]),.s(s[11:8])
			,.gen(carry[1]),.prop(prop[1]));
	a1csa a1csa_3 (.sel(sel[2]),.a(a[15:12]),.b(b[15:12]),.s(s[15:12])
			,.gen(carry[2]),.prop(prop[2]));
	a1csa a1csa_4 (.sel(sel[3]),.a(a[19:16]),.b(b[19:16]),.s(s[19:16])
			,.gen(carry[3]),.prop(prop[3]));
	a1csa a1csa_5 (.sel(sel[4]),.a(a[23:20]),.b(b[23:20]),.s(s[23:20])
			,.gen(carry[4]),.prop(prop[4]));
	a1csa a1csa_6 (.sel(sel[5]),.a(a[27:24]),.b(b[27:24]),.s(s[27:24])
			,.gen(carry[5]),.prop(prop[5]));
	a1csa a1csa_7 (.sel(sel[6]),.a(a[31:28]),.b(b[31:28]),.s(s[31:28])
			,.gen(carry[6]),.prop(prop[6]));
	a1csa a1csa_8 (.sel(sel[7]),.a(a[35:32]),.b(b[35:32]),.s(s[35:32])
			,.gen(carry[7]),.prop(prop[7]));
	a1csa a1csa_9 (.sel(sel[8]),.a(a[39:36]),.b(b[39:36]),.s(s[39:36])
			,.gen(carry[8]),.prop(prop[8]));
	a1csa a1csa_10 (.sel(sel[9]),.a(a[43:40]),.b(b[43:40]),.s(s[43:40])
			,.gen(carry[9]),.prop(prop[9]));
	a1csa a1csa_11 (.sel(sel[10]),.a(a[47:44]),.b(b[47:44]),.s(s[47:44])
			,.gen(carry[10]),.prop(prop[10]));
	a1csa a1csa_12 (.sel(sel[11]),.a(a[51:48]),.b(b[51:48]),.s(s[51:48])
			,.gen(carry[11]),.prop(prop[11]));
	a1csa a1csa_13 (.sel(sel[12]),.a(a[55:52]),.b(b[55:52]),.s(s[55:52])
			,.gen(carry[12]),.prop(prop[12]));
	a1csa a1csa_14 (.sel(sel[13]),.a(a[59:56]),.b(b[59:56]),.s(s[59:56])
			,.gen(carry[13]),.prop(prop[13]));
	a1csa a1csa_15 (.sel(sel[14]),.a(a[63:60]),.b(b[63:60]),.s(s[63:60])
			,.gen(carry[14]),.prop(prop[14]));
	a1csa a1csa_16 (.sel(sel[15]),.a(a[67:64]),.b(b[67:64]),.s(s[67:64])
			,.gen(carry[15]),.prop(prop[15]));
	a1csa a1csa_17 (.sel(sel[16]),.a(a[71:68]),.b(b[71:68]),.s(s[71:68])
			,.gen(carry[16]),.prop(prop[16]));
	a1csa a1csa_18 (.sel(sel[17]),.a(a[75:72]),.b(b[75:72]),.s(s[75:72])
			,.gen(carry[17]),.prop(prop[17]));
	a1csa a1csa_19 (.sel(sel[18]),.a(a[79:76]),.b(b[79:76]),.s(s[79:76])
			,.gen(carry[18]),.prop(prop[18]));
	a1csa a1csa_20 (.sel(sel[19]),.a(a[83:80]),.b(b[83:80]),.s(s[83:80])
			,.gen(carry[19]),.prop(prop[19]));
	a1csa a1csa_21 (.sel(sel[20]),.a(a[87:84]),.b(b[87:84]),.s(s[87:84])
			,.gen(carry[20]),.prop(prop[20]));
	a1csa a1csa_22 (.sel(sel[21]),.a(a[91:88]),.b(b[91:88]),.s(s[91:88])
			,.gen(carry[21]),.prop(prop[21]));
	a1csa a1csa_23 (.sel(sel[22]),.a(a[95:92]),.b(b[95:92]),.s(s[95:92])
			,.gen(carry[22]),.prop(prop[22]));
	a1csa a1csa_24 (.sel(sel[23]),.a(a[99:96]),.b(b[99:96]),.s(s[99:96])
			,.gen(carry[23]),.prop(prop[23]));
	a1csa a1csa_25 (.sel(sel[24]),.a(a[103:100]),.b(b[103:100]),.s(s[103:100])
			,.gen(carry[24]),.prop(prop[24]));
	a1csa a1csa_26 (.sel(sel[25]),.a(a[107:104]),.b(b[107:104]),.s(s[107:104])
			,.gen(carry[25]),.prop(prop[25]));
	a1csa a1csa_27 (.sel(sel[26]),.a(a[111:108]),.b(b[111:108]),.s(s[111:108])
			,.gen(carry[26]),.prop(prop[26]));
	a1csa a1csa_28 (.sel(sel[27]),.a(a[115:112]),.b(b[115:112]),.s(s[115:112])
			,.gen(carry[27]),.prop(prop[27]));
	a1csa a1csa_29 (.sel(sel[28]),.a(a[119:116]),.b(b[119:116]),.s(s[119:116])
			,.gen(carry[28]),.prop(prop[28]));
	a1csa a1csa_30 (.sel(sel[29]),.a(a[123:120]),.b(b[123:120]),.s(s[123:120])
			,.gen(carry[29]),.prop(prop[29]));
	a1csa a1csa_31 (.sel(sel[30]),.a(a[127:124]),.b(b[127:124]),.s(s[127:124])
			,.gen(carry[30]),.prop(prop[30]));

	assign sel[1] = carry[0] | (prop[0] & sel[0]);
	assign sel[2] = carry[1] | (prop[1] & sel[1]);
	assign sel[3] = carry[2] | (prop[2] & sel[2]);
	assign sel[4] = carry[3] | (prop[3] & sel[3]);
	assign sel[5] = carry[4] | (prop[4] & sel[4]);
	assign sel[6] = carry[5] | (prop[5] & sel[5]);
	assign sel[7] = carry[6] | (prop[6] & sel[6]);
	assign sel[8] = carry[7] | (prop[7] & sel[7]);
	assign sel[9] = carry[8] | (prop[8] & sel[8]);
	assign sel[10] = carry[9] | (prop[9] & sel[9]);
	assign sel[11] = carry[10] | (prop[10] & sel[10]);
	assign sel[12] = carry[11] | (prop[11] & sel[11]);
	assign sel[13] = carry[12] | (prop[12] & sel[12]);
	assign sel[14] = carry[13] | (prop[13] & sel[13]);
	assign sel[15] = carry[14] | (prop[14] & sel[14]);
	assign sel[16] = carry[15] | (prop[15] & sel[15]);
	assign sel[17] = carry[16] | (prop[16] & sel[16]);
	assign sel[18] = carry[17] | (prop[17] & sel[17]);
	assign sel[19] = carry[18] | (prop[18] & sel[18]);
	assign sel[20] = carry[19] | (prop[19] & sel[19]);
	assign sel[21] = carry[20] | (prop[20] & sel[20]);
	assign sel[22] = carry[21] | (prop[21] & sel[21]);
	assign sel[23] = carry[22] | (prop[22] & sel[22]);
	assign sel[24] = carry[23] | (prop[23] & sel[23]);
	assign sel[25] = carry[24] | (prop[24] & sel[24]);
	assign sel[26] = carry[25] | (prop[25] & sel[25]);
	assign sel[27] = carry[26] | (prop[26] & sel[26]);
	assign sel[28] = carry[27] | (prop[27] & sel[27]);
	assign sel[29] = carry[28] | (prop[28] & sel[28]);
	assign sel[30] = carry[29] | (prop[29] & sel[29]);
	assign cout  = carry[30] | (prop[30] & sel[30]);
endmodule
