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
// Design Name : cra4bitscin0
// File Name   : cra4bitscin0.v
// Function    : Carry Ripple Adder to 4 bits With CIN 0
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module cra4bitscin0 (a,b,s,cout);
	parameter n = 4;	
	input  [n-1:0] a;
	input  [n-1:0] b;
	output  [n-1:0] s;
	output  cout;
	
	wire [n-2:0] c;

	half_adder cra4_0 (.a(a[0]),.b(b[0]),.s(s[0]),.cout(c[0]));
	full_adder cra4_1 (.cin(c[0]),.a(a[1]),.b(b[1]),.s(s[1]),.cout(c[1]));
	full_adder cra4_2 (.cin(c[1]),.a(a[2]),.b(b[2]),.s(s[2]),.cout(c[2]));
	full_adder cra4_3 (.cin(c[2]),.a(a[3]),.b(b[3]),.s(s[3]),.cout(cout));
endmodule
