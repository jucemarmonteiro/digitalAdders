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
// Design Name : testbench_cra128bits
// File Name   : testbench_cra128bits.v
// Function    : testbench to cra 128 bits
// Coder       : Jucemar Monteiro
//-----------------------------------------------------

module testbench_cra128bits ();
	
	parameter n = 128;
	parameter tam = "128";
	parameter design = "cra";
	parameter type=0; //0={csa,cra,a1csa}, 1={cla,a1csah}
//	parameter file_size=2646;
	parameter file_size=30000;//random

	wire cin,cout_ref,cout_duv,prop_ref,gen_ref,prop_duv,gen_duv,prop,gen;
	wire [n-1:0] a,b,s_ref,s_duv;
	reg clk;

	cra128bits cra128bits (.cin(cin),.a(a),.b(b),.s(s_duv),.cout(cout_duv));

	ref_adder ref (.cin(cin),.a(a),.b(b),.s(s_ref),.cout(cout_ref),.prop(prop_ref),.gen(gen_ref));
	in read(.clk(clk),.cin(cin),.a(a),.b(b));
	out write(.clk(clk),.cin(cin),.a(a),.b(b),.cout_ref(cout_ref),.cout_duv(cout_duv),.s_ref(s_ref),.s_duv(s_duv),.prop_ref(prop_ref),.gen_ref(gen_ref),.prop_duv(prop_duv),.gen_duv(gen_duv));
	comp comparator(.clk(clk),.cin(cin),.a(a),.b(b),.cout_ref(cout_ref),.cout_duv(cout_duv),.s_ref(s_ref),.s_duv(s_duv),.prop_ref(prop_ref),.gen_ref(gen_ref),.prop_duv(prop_duv),.gen_duv(gen_duv));


	defparam ref.n=n;
	defparam cra128bits.n=n;
	defparam write.n=n;
	defparam write.type=type;
	defparam write.design_path={"log/log_",design,tam,"bits"};
	defparam read.n=n;
	defparam read.file_size=file_size;
	defparam read.tam=tam;
	defparam comp.n=n;
	defparam comp.type=type;


	always #50 clk = ~clk;

	initial begin
		$dumpfile({"switch_activity/",design,tam,"bits.vcd"});
		$dumpvars(10,testbench_cra128bits.cra128bits);
		clk = 1'b0;
	end

endmodule
