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
// Design Name : gen_table
// File Name   : gen_table.v
// Function    : module to generate truph table 
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module gen_table (clk,cin,a,b);
	parameter n = 4;
	parameter file_size=100;
	parameter tam="2";

	input clk;
	output  cin;
	output  [n-1:0]a,b;

	reg temp_cin;
	reg [n-1:0] temp_a,temp_b;
	integer i,j,k,n_vector;	


	initial begin
		n_vector=1;
		for(i=0;i<n;i=i+1) begin
			n_vector=2*n_vector;
		end
		i=0;
		j=0;
		k=0;		
	end

	always @ (negedge clk)
	begin
		if(i==1) begin
			if((j+1)==n_vector) begin
				if(k==n_vector) begin
					$finish;
				end
			end
		end

		if(i==500)
			$finish;
		
		if(k==n_vector) begin
			k=0;
			j=j+1;
		end
		if(j==n_vector) begin
			j=0;
			i=i+1;
		end
		temp_a=k;
		temp_b=j;
		temp_cin=i;
		k=k+1;	
		
	end
	assign cin=temp_cin;
	assign a=temp_a;
	assign b=temp_b;
	

endmodule
