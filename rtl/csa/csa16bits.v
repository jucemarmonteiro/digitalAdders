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
// Design Name : csa16bits
// File Name   : csa16bits.v
// Function    : Carry Select Adder for 16 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
module csa16bits (cin,a,b,s,cout);
	parameter n = 16;
	parameter m = 4;

	input  cin;
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  cout;

	wire [m-2:0] c0,c1,sel;

	cra4bits csa_0 (.cin(cin),.a(a[3:0]),.b(b[3:0]),.s(s[3:0]),.cout(sel[0]));
	csa csa_1 (.sel(sel[0]),.a(a[7:4]),.b(b[7:4]),.s(s[7:4]),.c0(c0[0]),.c1(c1[0]));
	csa csa_2 (.sel(sel[1]),.a(a[11:8]),.b(b[11:8]),.s(s[11:8]),.c0(c0[1]),.c1(c1[1]));
	csa csa_3 (.sel(sel[2]),.a(a[15:12]),.b(b[15:12]),.s(s[15:12]),.c0(c0[2]),.c1(c1[2]));

	assign sel[1] = c0[0] | (c1[0] & sel[0]);
	assign sel[2] = c0[1] | (c1[1] & sel[1]);
	assign cout  = c0[2] | (c1[2] & sel[2]);
endmodule
