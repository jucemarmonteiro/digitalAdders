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
// Design Name : rb3
// File Name   : rb3.v
// Function    : Add One for Fourth Bit
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
module  rb3 (sel, s, rs);
	parameter n = 4;
	input  [n-1:0]s;
	input sel;
	output  rs;
	assign rs= (sel & s[0] & s[1] & s[2]) ^ s[3];
endmodule 
