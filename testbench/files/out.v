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
// Design Name : out
// File Name   : out.v
// Function    : write log file module to testbench
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module out (clk,cin,a,b,cout_ref,cout_duv,s_ref,s_duv,prop_ref,gen_ref,prop_duv,gen_duv);
	parameter n = 4;
	parameter type=0; //0={csa,cra,a1csa}, 1={cla,a1csah}
	parameter design_path = "a";

	input  clk,cout_ref,cout_duv,prop_ref,gen_ref,cin,prop_duv,gen_duv;
	input  [n-1:0] s_ref,s_duv,a,b;

	integer file;

	initial begin
		file=$fopen(design_path,"w");	
	end

	always @ (posedge clk)
	begin
		$fwrite(file,"@%t#cin=%b#a=%d#b=%d#s_ref=%d#s_duv=%d",$time, cin,a,b,s_ref,s_duv);
		$fwrite(file,"#cout_ref=%b#cout_duv=%b",cout_ref,cout_duv);
		if(type==1)
			$fwrite(file,"#prop_ref=%b#prop_duv=%b#gen_ref=%b#gen_duv=%b\n",prop_ref,prop_duv,gen_ref,gen_duv);
		else
			$fwrite(file,"\n");
	end

endmodule
