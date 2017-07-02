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
// Design Name : full_adder
// File Name   : full_adder.v
// Function    : Full Adder
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module full_adder (cin,a,b,s,cout);
	input  cin,a,b;
	output  s,cout;
	assign s = (a ^ b) ^ cin;
	assign cout = (a & b) | (a & cin) | (b & cin);
endmodule
