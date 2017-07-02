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
// Design Name : testbench
// File Name   : testbench.v
// Function    : testbench
// Coder       : Jucemar Monteiro
//-----------------------------------------------------
//`timescale 1ns / 1ns
module testbench ();
//http://www.testbench.in/TB_03_FILE_IO_TB.html
	parameter n = 2;
	parameter type=0; //0={csa,cra,a1csa}, 1={cla,a1csah}

	integer i;

	wire cin,cout_ref,cout_duv,prop_ref,gen_ref,prop_duv,gen_duv,prop,gen;
	wire [n-1:0] a,b,s_ref,s_duv;

	reg clk;

	defparam ref.n=n;
	defparam duv.n=n;
	defparam write.n=n;
	defparam write.type=type;
	defparam read.n=n;
	defparam read.file_size=96;

	ref_adder ref (.cin(cin),.a(a),.b(b),.s(s_ref),.cout(cout_ref),.prop(prop_ref),.gen(gen_ref));
	//cra2bits duv (.cin(cin),.a(a),.b(b),.s(s_duv),.cout(cout_duv),.prop(prop_duv),.gen(gen_duv));
	cra2bits duv (.cin(cin),.a(a),.b(b),.s(s_duv),.cout(cout_duv));
	
	in read(.clk(clk),.cin(cin),.a(a),.b(b));
	out write(.clk(clk),.cin(cin),.a(a),.b(b),.cout_ref(cout_ref),.cout_duv(cout_duv),.s_ref(s_ref),.s_duv(s_duv),.prop_ref(prop_ref),.gen_ref(gen_ref),.prop_duv(prop_duv),.gen_duv(gen_duv));
	
	always #50 clk = ~clk;

	initial begin
		read.path_file={"stimulus/stimulus_","2bits"};
		write.path={"log/log_","cra","2bits"};
		clk = 1'b0;
		
	end

	always @(posedge clk)// and (s_ref or s_duv or cout_ref or cout_duv or prop_ref or prop_duv or gen_ref or gen_duv))
	begin
		if(s_ref!=s_duv)
			$display("Error at Sum:  t=%t cin=%b a=%d b=%d s_ref=%d s_duv=%d cout_ref=%b cout_duv=%b",$time,cin,a,b,s_ref,s_duv,cout_ref,cout_duv);
		if(cout_ref!=cout_duv)
			$display("Error at Cout: t=%t cin=%b a=%d b=%d s_ref=%d s_duv=%d cout_ref=%b cout_duv=%b",$time,cin,a,b,s_ref,s_duv,cout_ref,cout_duv);
		if(type==1)
		begin
			if(prop_ref!=prop_duv)
				$display("Error at Prop: t=%t cin=%b a=%d b=%d s_ref=%d s_duv=%d cout_ref=%b cout_duv=%b prop_ref=%b prop_duv=%b",$time,cin,a,b,s_ref,s_duv,cout_ref,cout_duv,prop_ref,prop_duv);
			if(gen_ref!=gen_duv)
				$display("Error at Gen:  t=%t cin=%b a=%d b=%d s_ref=%d s_duv=%d cout_ref=%b cout_duv=%b gen_ref=%b gen_duv=%b",$time,cin,a,b,s_ref,s_duv,cout_ref,cout_duv,gen_ref,gen_duv);
		end	
	end

endmodule
