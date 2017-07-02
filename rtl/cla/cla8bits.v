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
// Design Name : cla8bits
// File Name   : cla8bits.v
// Function    : Carry Lookahead Adder for 8 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module cla8bits (cin,a,b,s,gen,prop,cout);
	parameter n = 8;
	parameter m = 4;
	input  cin;	
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  gen;
	output  prop;
	output  cout;
	
	wire gen0,prop0, prop1,gen1,c4,cout0,cout1;

	cla4bits cla8bits_0 (.cin(cin),.a(a[m-1:0]),.b(b[m-1:0]),.s(s[m-1:0])
			      ,.gen(gen0),.prop(prop0),.cout(cout0));
	cla4bits cla8bits_1 (.cin(c4),.a(a[n-1:m]),.b(b[n-1:m]),.s(s[n-1:m])
			      ,.gen(gen1),.prop(prop1),.cout(cout1));

	assign c4 = gen0 | (prop0 & cin);
	assign cout = gen1 | (prop1 & gen0) | (prop1 & prop0 & cin);
	assign prop = prop1 & prop0;
	assign gen = gen1 | (prop1 & gen0);
endmodule
