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
// Design Name : mux2to1
// File Name   : mux2to1.v
// Function    : 2 to 1 Mutiplexor
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
module  mux2to1(sel,a, b,out);
	input  a, b, sel ;
	output  out;
	assign out = (sel) ? a : b;
endmodule 
