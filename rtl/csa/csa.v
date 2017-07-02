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
// Design Name : csa
// File Name   : csa.v
// Function    : Carry Select Adder for 4 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module csa (sel,a,b,s,c0,c1);
	parameter n = 4;
	input  sel;	
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  c0;
	output  c1;
	
	wire [n-1:0] sum0,sum1;

	cra4bitscin0 csa_0 (.a(a[n-1:0]),.b(b[n-1:0]),.s(sum0[n-1:0]),.cout(c0));
	cra4bitscin1 csa_1 (.a(a[n-1:0]),.b(b[n-1:0]),.s(sum1[n-1:0]),.cout(c1));
	
	mux2to1 m1 (.sel(sel),.a(sum1[0]),.b(sum0[0]),.out(s[0]));
	mux2to1 m2 (.sel(sel),.a(sum1[1]),.b(sum0[1]),.out(s[1]));
	mux2to1 m3 (.sel(sel),.a(sum1[2]),.b(sum0[2]),.out(s[2]));
	mux2to1 m4 (.sel(sel),.a(sum1[3]),.b(sum0[3]),.out(s[3]));
endmodule
