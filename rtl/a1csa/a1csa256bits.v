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
// Design Name : a1csa256bits
// File Name   : a1csa256bits.v
// Function    : Add One Carry Select Adder for 256 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
module a1csa256bits (cin,a,b,s,cout);
	parameter n = 256;
	parameter m = 64;

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
	a1csa a1csa_32 (.sel(sel[31]),.a(a[131:128]),.b(b[131:128]),.s(s[131:128])
			,.gen(carry[31]),.prop(prop[31]));
	a1csa a1csa_33 (.sel(sel[32]),.a(a[135:132]),.b(b[135:132]),.s(s[135:132])
			,.gen(carry[32]),.prop(prop[32]));
	a1csa a1csa_34 (.sel(sel[33]),.a(a[139:136]),.b(b[139:136]),.s(s[139:136])
			,.gen(carry[33]),.prop(prop[33]));
	a1csa a1csa_35 (.sel(sel[34]),.a(a[143:140]),.b(b[143:140]),.s(s[143:140])
			,.gen(carry[34]),.prop(prop[34]));
	a1csa a1csa_36 (.sel(sel[35]),.a(a[147:144]),.b(b[147:144]),.s(s[147:144])
			,.gen(carry[35]),.prop(prop[35]));
	a1csa a1csa_37 (.sel(sel[36]),.a(a[151:148]),.b(b[151:148]),.s(s[151:148])
			,.gen(carry[36]),.prop(prop[36]));
	a1csa a1csa_38 (.sel(sel[37]),.a(a[155:152]),.b(b[155:152]),.s(s[155:152])
			,.gen(carry[37]),.prop(prop[37]));
	a1csa a1csa_39 (.sel(sel[38]),.a(a[159:156]),.b(b[159:156]),.s(s[159:156])
			,.gen(carry[38]),.prop(prop[38]));
	a1csa a1csa_40 (.sel(sel[39]),.a(a[163:160]),.b(b[163:160]),.s(s[163:160])
			,.gen(carry[39]),.prop(prop[39]));
	a1csa a1csa_41 (.sel(sel[40]),.a(a[167:164]),.b(b[167:164]),.s(s[167:164])
			,.gen(carry[40]),.prop(prop[40]));
	a1csa a1csa_42 (.sel(sel[41]),.a(a[171:168]),.b(b[171:168]),.s(s[171:168])
			,.gen(carry[41]),.prop(prop[41]));
	a1csa a1csa_43 (.sel(sel[42]),.a(a[175:172]),.b(b[175:172]),.s(s[175:172])
			,.gen(carry[42]),.prop(prop[42]));
	a1csa a1csa_44 (.sel(sel[43]),.a(a[179:176]),.b(b[179:176]),.s(s[179:176])
			,.gen(carry[43]),.prop(prop[43]));
	a1csa a1csa_45 (.sel(sel[44]),.a(a[183:180]),.b(b[183:180]),.s(s[183:180])
			,.gen(carry[44]),.prop(prop[44]));
	a1csa a1csa_46 (.sel(sel[45]),.a(a[187:184]),.b(b[187:184]),.s(s[187:184])
			,.gen(carry[45]),.prop(prop[45]));
	a1csa a1csa_47 (.sel(sel[46]),.a(a[191:188]),.b(b[191:188]),.s(s[191:188])
			,.gen(carry[46]),.prop(prop[46]));
	a1csa a1csa_48 (.sel(sel[47]),.a(a[195:192]),.b(b[195:192]),.s(s[195:192])
			,.gen(carry[47]),.prop(prop[47]));
	a1csa a1csa_49 (.sel(sel[48]),.a(a[199:196]),.b(b[199:196]),.s(s[199:196])
			,.gen(carry[48]),.prop(prop[48]));
	a1csa a1csa_50 (.sel(sel[49]),.a(a[203:200]),.b(b[203:200]),.s(s[203:200])
			,.gen(carry[49]),.prop(prop[49]));
	a1csa a1csa_51 (.sel(sel[50]),.a(a[207:204]),.b(b[207:204]),.s(s[207:204])
			,.gen(carry[50]),.prop(prop[50]));
	a1csa a1csa_52 (.sel(sel[51]),.a(a[211:208]),.b(b[211:208]),.s(s[211:208])
			,.gen(carry[51]),.prop(prop[51]));
	a1csa a1csa_53 (.sel(sel[52]),.a(a[215:212]),.b(b[215:212]),.s(s[215:212])
			,.gen(carry[52]),.prop(prop[52]));
	a1csa a1csa_54 (.sel(sel[53]),.a(a[219:216]),.b(b[219:216]),.s(s[219:216])
			,.gen(carry[53]),.prop(prop[53]));
	a1csa a1csa_55 (.sel(sel[54]),.a(a[223:220]),.b(b[223:220]),.s(s[223:220])
			,.gen(carry[54]),.prop(prop[54]));
	a1csa a1csa_56 (.sel(sel[55]),.a(a[227:224]),.b(b[227:224]),.s(s[227:224])
			,.gen(carry[55]),.prop(prop[55]));
	a1csa a1csa_57 (.sel(sel[56]),.a(a[231:228]),.b(b[231:228]),.s(s[231:228])
			,.gen(carry[56]),.prop(prop[56]));
	a1csa a1csa_58 (.sel(sel[57]),.a(a[235:232]),.b(b[235:232]),.s(s[235:232])
			,.gen(carry[57]),.prop(prop[57]));
	a1csa a1csa_59 (.sel(sel[58]),.a(a[239:236]),.b(b[239:236]),.s(s[239:236])
			,.gen(carry[58]),.prop(prop[58]));
	a1csa a1csa_60 (.sel(sel[59]),.a(a[243:240]),.b(b[243:240]),.s(s[243:240])
			,.gen(carry[59]),.prop(prop[59]));
	a1csa a1csa_61 (.sel(sel[60]),.a(a[247:244]),.b(b[247:244]),.s(s[247:244])
			,.gen(carry[60]),.prop(prop[60]));
	a1csa a1csa_62 (.sel(sel[61]),.a(a[251:248]),.b(b[251:248]),.s(s[251:248])
			,.gen(carry[61]),.prop(prop[61]));
	a1csa a1csa_63 (.sel(sel[62]),.a(a[255:252]),.b(b[255:252]),.s(s[255:252])
			,.gen(carry[62]),.prop(prop[62]));

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
	assign sel[31] = carry[30] | (prop[30] & sel[30]);
	assign sel[32] = carry[31] | (prop[31] & sel[31]);
	assign sel[33] = carry[32] | (prop[32] & sel[32]);
	assign sel[34] = carry[33] | (prop[33] & sel[33]);
	assign sel[35] = carry[34] | (prop[34] & sel[34]);
	assign sel[36] = carry[35] | (prop[35] & sel[35]);
	assign sel[37] = carry[36] | (prop[36] & sel[36]);
	assign sel[38] = carry[37] | (prop[37] & sel[37]);
	assign sel[39] = carry[38] | (prop[38] & sel[38]);
	assign sel[40] = carry[39] | (prop[39] & sel[39]);
	assign sel[41] = carry[40] | (prop[40] & sel[40]);
	assign sel[42] = carry[41] | (prop[41] & sel[41]);
	assign sel[43] = carry[42] | (prop[42] & sel[42]);
	assign sel[44] = carry[43] | (prop[43] & sel[43]);
	assign sel[45] = carry[44] | (prop[44] & sel[44]);
	assign sel[46] = carry[45] | (prop[45] & sel[45]);
	assign sel[47] = carry[46] | (prop[46] & sel[46]);
	assign sel[48] = carry[47] | (prop[47] & sel[47]);
	assign sel[49] = carry[48] | (prop[48] & sel[48]);
	assign sel[50] = carry[49] | (prop[49] & sel[49]);
	assign sel[51] = carry[50] | (prop[50] & sel[50]);
	assign sel[52] = carry[51] | (prop[51] & sel[51]);
	assign sel[53] = carry[52] | (prop[52] & sel[52]);
	assign sel[54] = carry[53] | (prop[53] & sel[53]);
	assign sel[55] = carry[54] | (prop[54] & sel[54]);
	assign sel[56] = carry[55] | (prop[55] & sel[55]);
	assign sel[57] = carry[56] | (prop[56] & sel[56]);
	assign sel[58] = carry[57] | (prop[57] & sel[57]);
	assign sel[59] = carry[58] | (prop[58] & sel[58]);
	assign sel[60] = carry[59] | (prop[59] & sel[59]);
	assign sel[61] = carry[60] | (prop[60] & sel[60]);
	assign sel[62] = carry[61] | (prop[61] & sel[61]);
	assign cout  = carry[62] | (prop[62] & sel[62]);
endmodule
