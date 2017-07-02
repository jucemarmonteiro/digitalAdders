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
// Design Name : csa256bits
// File Name   : csa256bits.v
// Function    : Carry Select Adder for 256 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
module csa256bits (cin,a,b,s,cout);
	parameter n = 256;
	parameter m = 64;

	input  cin;
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  cout;

	wire [m-2:0] c0,c1,sel;

	cra4bits csa_0 (.cin(cin),.a(a[3:0]),.b(b[3:0]),.s(s[3:0]),.cout(sel[0]));
	csa csa_1 (.sel(sel[0]),.a(a[7:4]),.b(b[7:4]),.s(s[7:4]),.c0(c0[0])
			,.c1(c1[0]));
	csa csa_2 (.sel(sel[1]),.a(a[11:8]),.b(b[11:8]),.s(s[11:8]),.c0(c0[1])
			,.c1(c1[1]));
	csa csa_3 (.sel(sel[2]),.a(a[15:12]),.b(b[15:12]),.s(s[15:12]),.c0(c0[2])
			,.c1(c1[2]));
	csa csa_4 (.sel(sel[3]),.a(a[19:16]),.b(b[19:16]),.s(s[19:16]),.c0(c0[3])
			,.c1(c1[3]));
	csa csa_5 (.sel(sel[4]),.a(a[23:20]),.b(b[23:20]),.s(s[23:20]),.c0(c0[4])
			,.c1(c1[4]));
	csa csa_6 (.sel(sel[5]),.a(a[27:24]),.b(b[27:24]),.s(s[27:24]),.c0(c0[5])
			,.c1(c1[5]));
	csa csa_7 (.sel(sel[6]),.a(a[31:28]),.b(b[31:28]),.s(s[31:28]),.c0(c0[6])
			,.c1(c1[6]));
	csa csa_8 (.sel(sel[7]),.a(a[35:32]),.b(b[35:32]),.s(s[35:32]),.c0(c0[7])
			,.c1(c1[7]));
	csa csa_9 (.sel(sel[8]),.a(a[39:36]),.b(b[39:36]),.s(s[39:36]),.c0(c0[8])
			,.c1(c1[8]));
	csa csa_10 (.sel(sel[9]),.a(a[43:40]),.b(b[43:40]),.s(s[43:40]),.c0(c0[9])
			,.c1(c1[9]));
	csa csa_11 (.sel(sel[10]),.a(a[47:44]),.b(b[47:44]),.s(s[47:44]),.c0(c0[10])
			,.c1(c1[10]));
	csa csa_12 (.sel(sel[11]),.a(a[51:48]),.b(b[51:48]),.s(s[51:48]),.c0(c0[11])
			,.c1(c1[11]));
	csa csa_13 (.sel(sel[12]),.a(a[55:52]),.b(b[55:52]),.s(s[55:52]),.c0(c0[12])
			,.c1(c1[12]));
	csa csa_14 (.sel(sel[13]),.a(a[59:56]),.b(b[59:56]),.s(s[59:56]),.c0(c0[13])
			,.c1(c1[13]));
	csa csa_15 (.sel(sel[14]),.a(a[63:60]),.b(b[63:60]),.s(s[63:60]),.c0(c0[14])
			,.c1(c1[14]));
	csa csa_16 (.sel(sel[15]),.a(a[67:64]),.b(b[67:64]),.s(s[67:64]),.c0(c0[15])
			,.c1(c1[15]));
	csa csa_17 (.sel(sel[16]),.a(a[71:68]),.b(b[71:68]),.s(s[71:68]),.c0(c0[16])
			,.c1(c1[16]));
	csa csa_18 (.sel(sel[17]),.a(a[75:72]),.b(b[75:72]),.s(s[75:72]),.c0(c0[17])
			,.c1(c1[17]));
	csa csa_19 (.sel(sel[18]),.a(a[79:76]),.b(b[79:76]),.s(s[79:76]),.c0(c0[18])
			,.c1(c1[18]));
	csa csa_20 (.sel(sel[19]),.a(a[83:80]),.b(b[83:80]),.s(s[83:80]),.c0(c0[19])
			,.c1(c1[19]));
	csa csa_21 (.sel(sel[20]),.a(a[87:84]),.b(b[87:84]),.s(s[87:84]),.c0(c0[20])
			,.c1(c1[20]));
	csa csa_22 (.sel(sel[21]),.a(a[91:88]),.b(b[91:88]),.s(s[91:88]),.c0(c0[21])
			,.c1(c1[21]));
	csa csa_23 (.sel(sel[22]),.a(a[95:92]),.b(b[95:92]),.s(s[95:92]),.c0(c0[22])
			,.c1(c1[22]));
	csa csa_24 (.sel(sel[23]),.a(a[99:96]),.b(b[99:96]),.s(s[99:96]),.c0(c0[23])
			,.c1(c1[23]));
	csa csa_25 (.sel(sel[24]),.a(a[103:100]),.b(b[103:100]),.s(s[103:100]),.c0(c0[24])
			,.c1(c1[24]));
	csa csa_26 (.sel(sel[25]),.a(a[107:104]),.b(b[107:104]),.s(s[107:104]),.c0(c0[25])
			,.c1(c1[25]));
	csa csa_27 (.sel(sel[26]),.a(a[111:108]),.b(b[111:108]),.s(s[111:108]),.c0(c0[26])
			,.c1(c1[26]));
	csa csa_28 (.sel(sel[27]),.a(a[115:112]),.b(b[115:112]),.s(s[115:112]),.c0(c0[27])
			,.c1(c1[27]));
	csa csa_29 (.sel(sel[28]),.a(a[119:116]),.b(b[119:116]),.s(s[119:116]),.c0(c0[28])
			,.c1(c1[28]));
	csa csa_30 (.sel(sel[29]),.a(a[123:120]),.b(b[123:120]),.s(s[123:120]),.c0(c0[29])
			,.c1(c1[29]));
	csa csa_31 (.sel(sel[30]),.a(a[127:124]),.b(b[127:124]),.s(s[127:124]),.c0(c0[30])
			,.c1(c1[30]));
	csa csa_32 (.sel(sel[31]),.a(a[131:128]),.b(b[131:128]),.s(s[131:128]),.c0(c0[31])
			,.c1(c1[31]));
	csa csa_33 (.sel(sel[32]),.a(a[135:132]),.b(b[135:132]),.s(s[135:132]),.c0(c0[32])
			,.c1(c1[32]));
	csa csa_34 (.sel(sel[33]),.a(a[139:136]),.b(b[139:136]),.s(s[139:136]),.c0(c0[33])
			,.c1(c1[33]));
	csa csa_35 (.sel(sel[34]),.a(a[143:140]),.b(b[143:140]),.s(s[143:140]),.c0(c0[34])
			,.c1(c1[34]));
	csa csa_36 (.sel(sel[35]),.a(a[147:144]),.b(b[147:144]),.s(s[147:144]),.c0(c0[35])
			,.c1(c1[35]));
	csa csa_37 (.sel(sel[36]),.a(a[151:148]),.b(b[151:148]),.s(s[151:148]),.c0(c0[36])
			,.c1(c1[36]));
	csa csa_38 (.sel(sel[37]),.a(a[155:152]),.b(b[155:152]),.s(s[155:152]),.c0(c0[37])
			,.c1(c1[37]));
	csa csa_39 (.sel(sel[38]),.a(a[159:156]),.b(b[159:156]),.s(s[159:156]),.c0(c0[38])
			,.c1(c1[38]));
	csa csa_40 (.sel(sel[39]),.a(a[163:160]),.b(b[163:160]),.s(s[163:160]),.c0(c0[39])
			,.c1(c1[39]));
	csa csa_41 (.sel(sel[40]),.a(a[167:164]),.b(b[167:164]),.s(s[167:164]),.c0(c0[40])
			,.c1(c1[40]));
	csa csa_42 (.sel(sel[41]),.a(a[171:168]),.b(b[171:168]),.s(s[171:168]),.c0(c0[41])
			,.c1(c1[41]));
	csa csa_43 (.sel(sel[42]),.a(a[175:172]),.b(b[175:172]),.s(s[175:172]),.c0(c0[42])
			,.c1(c1[42]));
	csa csa_44 (.sel(sel[43]),.a(a[179:176]),.b(b[179:176]),.s(s[179:176]),.c0(c0[43])
			,.c1(c1[43]));
	csa csa_45 (.sel(sel[44]),.a(a[183:180]),.b(b[183:180]),.s(s[183:180]),.c0(c0[44])
			,.c1(c1[44]));
	csa csa_46 (.sel(sel[45]),.a(a[187:184]),.b(b[187:184]),.s(s[187:184]),.c0(c0[45])
			,.c1(c1[45]));
	csa csa_47 (.sel(sel[46]),.a(a[191:188]),.b(b[191:188]),.s(s[191:188]),.c0(c0[46])
			,.c1(c1[46]));
	csa csa_48 (.sel(sel[47]),.a(a[195:192]),.b(b[195:192]),.s(s[195:192]),.c0(c0[47])
			,.c1(c1[47]));
	csa csa_49 (.sel(sel[48]),.a(a[199:196]),.b(b[199:196]),.s(s[199:196]),.c0(c0[48])
			,.c1(c1[48]));
	csa csa_50 (.sel(sel[49]),.a(a[203:200]),.b(b[203:200]),.s(s[203:200]),.c0(c0[49])
			,.c1(c1[49]));
	csa csa_51 (.sel(sel[50]),.a(a[207:204]),.b(b[207:204]),.s(s[207:204]),.c0(c0[50])
			,.c1(c1[50]));
	csa csa_52 (.sel(sel[51]),.a(a[211:208]),.b(b[211:208]),.s(s[211:208]),.c0(c0[51])
			,.c1(c1[51]));
	csa csa_53 (.sel(sel[52]),.a(a[215:212]),.b(b[215:212]),.s(s[215:212]),.c0(c0[52])
			,.c1(c1[52]));
	csa csa_54 (.sel(sel[53]),.a(a[219:216]),.b(b[219:216]),.s(s[219:216]),.c0(c0[53])
			,.c1(c1[53]));
	csa csa_55 (.sel(sel[54]),.a(a[223:220]),.b(b[223:220]),.s(s[223:220]),.c0(c0[54])
			,.c1(c1[54]));
	csa csa_56 (.sel(sel[55]),.a(a[227:224]),.b(b[227:224]),.s(s[227:224]),.c0(c0[55])
			,.c1(c1[55]));
	csa csa_57 (.sel(sel[56]),.a(a[231:228]),.b(b[231:228]),.s(s[231:228]),.c0(c0[56])
			,.c1(c1[56]));
	csa csa_58 (.sel(sel[57]),.a(a[235:232]),.b(b[235:232]),.s(s[235:232]),.c0(c0[57])
			,.c1(c1[57]));
	csa csa_59 (.sel(sel[58]),.a(a[239:236]),.b(b[239:236]),.s(s[239:236]),.c0(c0[58])
			,.c1(c1[58]));
	csa csa_60 (.sel(sel[59]),.a(a[243:240]),.b(b[243:240]),.s(s[243:240]),.c0(c0[59])
			,.c1(c1[59]));
	csa csa_61 (.sel(sel[60]),.a(a[247:244]),.b(b[247:244]),.s(s[247:244]),.c0(c0[60])
			,.c1(c1[60]));
	csa csa_62 (.sel(sel[61]),.a(a[251:248]),.b(b[251:248]),.s(s[251:248]),.c0(c0[61])
			,.c1(c1[61]));
	csa csa_63 (.sel(sel[62]),.a(a[255:252]),.b(b[255:252]),.s(s[255:252]),.c0(c0[62])
			,.c1(c1[62]));

	assign sel[1] = c0[0] | (c1[0] & sel[0]);
	assign sel[2] = c0[1] | (c1[1] & sel[1]);
	assign sel[3] = c0[2] | (c1[2] & sel[2]);
	assign sel[4] = c0[3] | (c1[3] & sel[3]);
	assign sel[5] = c0[4] | (c1[4] & sel[4]);
	assign sel[6] = c0[5] | (c1[5] & sel[5]);
	assign sel[7] = c0[6] | (c1[6] & sel[6]);
	assign sel[8] = c0[7] | (c1[7] & sel[7]);
	assign sel[9] = c0[8] | (c1[8] & sel[8]);
	assign sel[10] = c0[9] | (c1[9] & sel[9]);
	assign sel[11] = c0[10] | (c1[10] & sel[10]);
	assign sel[12] = c0[11] | (c1[11] & sel[11]);
	assign sel[13] = c0[12] | (c1[12] & sel[12]);
	assign sel[14] = c0[13] | (c1[13] & sel[13]);
	assign sel[15] = c0[14] | (c1[14] & sel[14]);
	assign sel[16] = c0[15] | (c1[15] & sel[15]);
	assign sel[17] = c0[16] | (c1[16] & sel[16]);
	assign sel[18] = c0[17] | (c1[17] & sel[17]);
	assign sel[19] = c0[18] | (c1[18] & sel[18]);
	assign sel[20] = c0[19] | (c1[19] & sel[19]);
	assign sel[21] = c0[20] | (c1[20] & sel[20]);
	assign sel[22] = c0[21] | (c1[21] & sel[21]);
	assign sel[23] = c0[22] | (c1[22] & sel[22]);
	assign sel[24] = c0[23] | (c1[23] & sel[23]);
	assign sel[25] = c0[24] | (c1[24] & sel[24]);
	assign sel[26] = c0[25] | (c1[25] & sel[25]);
	assign sel[27] = c0[26] | (c1[26] & sel[26]);
	assign sel[28] = c0[27] | (c1[27] & sel[27]);
	assign sel[29] = c0[28] | (c1[28] & sel[28]);
	assign sel[30] = c0[29] | (c1[29] & sel[29]);
	assign sel[31] = c0[30] | (c1[30] & sel[30]);
	assign sel[32] = c0[31] | (c1[31] & sel[31]);
	assign sel[33] = c0[32] | (c1[32] & sel[32]);
	assign sel[34] = c0[33] | (c1[33] & sel[33]);
	assign sel[35] = c0[34] | (c1[34] & sel[34]);
	assign sel[36] = c0[35] | (c1[35] & sel[35]);
	assign sel[37] = c0[36] | (c1[36] & sel[36]);
	assign sel[38] = c0[37] | (c1[37] & sel[37]);
	assign sel[39] = c0[38] | (c1[38] & sel[38]);
	assign sel[40] = c0[39] | (c1[39] & sel[39]);
	assign sel[41] = c0[40] | (c1[40] & sel[40]);
	assign sel[42] = c0[41] | (c1[41] & sel[41]);
	assign sel[43] = c0[42] | (c1[42] & sel[42]);
	assign sel[44] = c0[43] | (c1[43] & sel[43]);
	assign sel[45] = c0[44] | (c1[44] & sel[44]);
	assign sel[46] = c0[45] | (c1[45] & sel[45]);
	assign sel[47] = c0[46] | (c1[46] & sel[46]);
	assign sel[48] = c0[47] | (c1[47] & sel[47]);
	assign sel[49] = c0[48] | (c1[48] & sel[48]);
	assign sel[50] = c0[49] | (c1[49] & sel[49]);
	assign sel[51] = c0[50] | (c1[50] & sel[50]);
	assign sel[52] = c0[51] | (c1[51] & sel[51]);
	assign sel[53] = c0[52] | (c1[52] & sel[52]);
	assign sel[54] = c0[53] | (c1[53] & sel[53]);
	assign sel[55] = c0[54] | (c1[54] & sel[54]);
	assign sel[56] = c0[55] | (c1[55] & sel[55]);
	assign sel[57] = c0[56] | (c1[56] & sel[56]);
	assign sel[58] = c0[57] | (c1[57] & sel[57]);
	assign sel[59] = c0[58] | (c1[58] & sel[58]);
	assign sel[60] = c0[59] | (c1[59] & sel[59]);
	assign sel[61] = c0[60] | (c1[60] & sel[60]);
	assign sel[62] = c0[61] | (c1[61] & sel[61]);
	assign cout  = c0[62] | (c1[62] & sel[62]);
endmodule
