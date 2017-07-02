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
// Design Name : csa64bits
// File Name   : csa64bits.v
// Function    : Carry Select Adder for 64 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
module csa64bits (cin,a,b,s,cout);
	parameter n = 64;
	parameter m = 16;

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
	assign cout  = c0[14] | (c1[14] & sel[14]);
endmodule
