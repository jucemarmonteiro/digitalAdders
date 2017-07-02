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
// Design Name : cra128bits
// File Name   : cra128bits.v
// Function    : Carry Ripple Adder to 128 bits 
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module cra128bits (cin,a,b,s,cout);
	parameter n = 128;
	parameter m = 64;
	input  cin;	
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  cout;
	
	wire c;

	cra64bits cra128_0 (.cin(cin),.a(a[m-1:0]),.b(b[m-1:0]),.s(s[m-1:0]),.cout(c));
	cra64bits cra128_1 (.cin(c),.a(a[n-1:m]),.b(b[n-1:m]),.s(s[n-1:m]),.cout(cout));
endmodule
