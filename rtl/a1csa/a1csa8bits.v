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
// Design Name : a1csa8bits
// File Name   : a1csa8bits.v
// Function    : Add One Carry Select Adder for 8 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
module a1csa8bits (cin,a,b,s,cout);
	parameter n = 8;
	parameter m = 2;

	input  cin;
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  cout;

	wire [m-2:0] carry,prop,sel;

	cra4bits a1csa_0 (.cin(cin),.a(a[3:0]),.b(b[3:0]),.s(s[3:0]),.cout(sel[0]));
	a1csa a1csa_1 (.sel(sel[0]),.a(a[7:4]),.b(b[7:4]),.s(s[7:4]),.gen(carry[0])
			,.prop(prop[0]));

	assign cout  = carry[0] | (prop[0] & sel[0]);
endmodule
