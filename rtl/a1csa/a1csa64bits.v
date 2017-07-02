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
// Design Name : a1csa64bits
// File Name   : a1csa64bits.v
// Function    : Add One Carry Select Adder for 64 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
module a1csa64bits (cin,a,b,s,cout);
	parameter n = 64;
	parameter m = 16;

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
	assign cout  = carry[14] | (prop[14] & sel[14]);
endmodule
