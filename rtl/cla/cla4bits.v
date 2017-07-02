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
// Design Name : cla4bits
// File Name   : cla4bits.v
// Function    : Carry Lookahead Adder for 4 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module cla4bits (cin,a,b,s,gen,prop,cout);
	parameter n = 4;
	parameter m = 0;
	input  cin;	
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  gen;
	output  prop;
	output  cout;
	
	wire gen0,prop0;
	cla cla4bits_0 (.cin(cin),.a(a[n-1:m]),.b(b[n-1:m]),.s(s[n-1:m])
			,.gen(gen0),.prop(prop0));
	assign cout = gen0 | (prop0 & cin);
	assign prop = prop0;
	assign gen = gen0;
endmodule
