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
// Design Name : in
// File Name   : in.v
// Function    : read module of vectors to testbench
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module in (clk,cin,a,b);
	parameter n = 4;
	parameter file_size=100;
	parameter tam="2";


	reg [n:0] data [file_size-1:0];

	input clk;
	output  cin;
	output  [n-1:0]a,b;

	reg temp_cin;
	reg [n-1:0] temp_a,temp_b;
	integer i;	


	initial begin
		i=0;
		//$readmemh( {"stimulus/stimulus_",tam,"bits"},data);
		$readmemh( {"stimulus/random_stimulus_",tam,"bits"},data);		
	end

	always @ (negedge clk)
	begin
		if(i==file_size)
			$finish;
		temp_a=data[i];
		i=i+1;
		temp_b=data[i];
		i=i+1;
		temp_cin=data[i];
		i=i+1;
		
	end
	assign cin=temp_cin;
	assign a=temp_a;
	assign b=temp_b;
	

endmodule
