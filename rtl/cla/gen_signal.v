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
// Design Name : gen_signal
// File Name   : gen_signal.v
// Function    : Carry Generate for 4 bit in the CLA Block
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module gen_signal (g,p,carry);
	parameter n = 4;
	input  [n-1:0] g;
	input  [n-2:0] p;
	output  carry;
	
	wire [n-2:0]c;

	assign c[0]= g[0];
	assign c[1]= g[1] | (p[0] & c[0]);
	assign c[2]= g[2] | (p[1] & c[1]);
	assign carry= g[3] | (p[2] & c[2]);
endmodule
