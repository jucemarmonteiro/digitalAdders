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
// Design Name : a1csah
// File Name   : a1csah.v
// Function    : Hierarchical Add One Carry Select Adder for 4 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module a1csah (sel,a,b,s,gen,prop);
	parameter n = 4;
	input  sel;	
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  gen;
	output  prop;
	
	wire [n-1:0] s0,rs,carry;

	clacin0 cla_base (.a(a[n-1:0]),.b(b[n-1:0]),.s(s0[n-1:0]),.gen(gen),.prop(prop));

	rb0 r0 (.sel(sel),.s(s0[0]),.rs(s[0]));
	rb1 r1 (.sel(sel),.s(s0[1:0]),.rs(s[1]));
	rb2 r2 (.sel(sel),.s(s0[2:0]),.rs(s[2]));
	rb3 r3 (.sel(sel),.s(s0[3:0]),.rs(s[3]));
endmodule
