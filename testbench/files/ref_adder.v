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
// Design Name : ref_adder
// File Name   : ref_adder.v
// Function    : reference adder to testbench
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module ref_adder (cin,a,b,s,cout,prop,gen);
	parameter n = 4;
	integer i;
	input  cin;
	input  [n-1:0] a, b;
	output   [n-1:0] s;
	output   cout,prop,gen;

	wire [n:0]temp,temp2;
	reg p;

	assign temp = a + b + cin;
	assign s = temp[n-1:0];
	assign cout = temp[n];
	assign temp2 = a + b;
	assign gen=temp2[n];
	assign prop=p;

	always @(cin or a or b) begin
		p=1'b1;
		for (i = 0; i < n; i = i +1) begin
   		  	p=p & (a[i] ^ b[i]);
   		end

	end



endmodule
