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
// Design Name : comp
// File Name   : comp.v
// Function    : comparator module for testbench
// Coder       : Jucemar Monteiro
//-----------------------------------------------------


module comp (clk,cin,a,b,cout_ref,cout_duv,s_ref,s_duv,prop_ref,gen_ref,prop_duv,gen_duv);
	parameter n=0;
	parameter type=0; //0={csa,cra,a1csa}, 1={cla,a1csah}

	input  clk,cout_ref,cout_duv,prop_ref,gen_ref,cin,prop_duv,gen_duv;
	input  [n-1:0] s_ref,s_duv,a,b;

	always @(posedge clk)
	begin
		if(s_ref!=s_duv)
		begin
			if(type==0)
				$display("Error at Sum:  t=%t cin=%b a=%d b=%d s_ref=%d s_duv=%d cout_ref=%b cout_duv=%b",$time,cin,a,b,s_ref,s_duv,cout_ref,cout_duv);

			else
				$display("Error at Sum:  t=%t cin=%b a=%d b=%d s_ref=%d s_duv=%d prop_ref=%b prop_duv=%b gen_ref=%b gen_duv=%b",$time,cin,a,b,s_ref,s_duv,prop_ref,prop_duv,gen_ref,gen_duv);

		end
		if(type==0)
		begin
			if(cout_ref!=cout_duv)
				$display("Error at Cout: t=%t cin=%b a=%d b=%d s_ref=%d s_duv=%d cout_ref=%b cout_duv=%b",$time,cin,a,b,s_ref,s_duv,cout_ref,cout_duv);
		end
		else
		begin
			if(prop_ref!=prop_duv)
				$display("Error at Prop: t=%t cin=%b a=%d b=%d s_ref=%d s_duv=%d prop_ref=%b prop_duv=%b gen_ref=%b gen_duv=%b",$time,cin,a,b,s_ref,s_duv,prop_ref,prop_duv,gen_ref,gen_duv);
			if(gen_ref!=gen_duv)
				$display("Error at Gen:  t=%t cin=%b a=%d b=%d s_ref=%d s_duv=%d prop_ref=%b prop_duv=%b gen_ref=%b gen_duv=%b",$time,cin,a,b,s_ref,s_duv,prop_ref,prop_duv,gen_ref,gen_duv);
		end	
	end


endmodule
