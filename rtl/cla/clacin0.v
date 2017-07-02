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
// Design Name : clacin0
// File Name   : clacin0.v
// Function    : Carry Lookahead Adder for 4 bits when CIN is 0
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module clacin0 (a,b,s,gen,prop);
	parameter n = 4;
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  gen;
	output  prop;
	
	wire [n-2:0] carry;
	wire [n-1:0] g,p;
	
	gen_unit gu0 (.a(a[0]),.b(b[0]),.g(g[0]));
	gen_unit gu1 (.a(a[1]),.b(b[1]),.g(g[1]));
	gen_unit gu2 (.a(a[2]),.b(b[2]),.g(g[2]));
	gen_unit gu3 (.a(a[3]),.b(b[3]),.g(g[3]));

	prop_unit pu0 (.a(a[0]),.b(b[0]),.p(p[0]));
	prop_unit pu1 (.a(a[1]),.b(b[1]),.p(p[1]));
	prop_unit pu2 (.a(a[2]),.b(b[2]),.p(p[2]));
	prop_unit pu3 (.a(a[3]),.b(b[3]),.p(p[3]));

	assign carry[0] = g[0];
	c2cin0 carry2 (.g(g[1:0]),.p(p[1:1]),.carry(carry[1]));
	c3cin0 carry3 (.g(g[2:0]),.p(p[2:1]),.carry(carry[2]));

	gen_signal gen_sum (.g(g[n-1:0]), .p(p[n-1:1]), .carry(gen));
	
	prop_signal prop_sum (.p(p[n-1:0]),.prop(prop));

	assign s[0] = p[0];	
	sum sum1 (.a(carry[0]),.b(p[1]),.s(s[1]));
	sum sum2 (.a(carry[1]),.b(p[2]),.s(s[2]));
	sum sum3 (.a(carry[2]),.b(p[3]),.s(s[3]));
endmodule
