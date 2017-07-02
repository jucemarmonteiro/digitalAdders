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
// Design Name : a1csah64
// File Name   : a1csah64.v
// Function    : Hierarchical Add One Carry Select Adder for 64 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module a1csah64 (cin,a,b,s,gen,prop);
	parameter n = 64;
	parameter m = 32;
	input  cin;	
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  gen;
	output  prop;
	
	wire prop0,gen0,prop1,gen1,sel;

	a1csah32 a1csah_0 (.cin(cin),.a(a[m-1:0]),.b(b[m-1:0]),.s(s[m-1:0]),.gen(gen0),.prop(prop0));
	a1csah32 a1csah_1 (.cin(sel),.a(a[n-1:m]),.b(b[n-1:m]),.s(s[n-1:m]),.gen(gen1),.prop(prop1));

	assign sel = gen0 | (prop0 & cin);
	assign gen = gen1 | (prop1 & gen0);
	assign prop = prop1 & prop0;
endmodule
