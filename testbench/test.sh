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


design="ERRO"
sim(){
	echo 	"#########################################################"
	echo 	"#							#"
	echo 	"#							#"
	echo 	"	analysing $design 				 "
	echo 	"#							#"
	echo	"#							#"
	echo 	"#########################################################"
	rm -r csrc
	rm -r simv.daidir
	rm simv	
	vcs  -R -f paths/path_$design -notice -timescale=1ns/1ps
	vcd2saif -input switch_activity/$design.vcd -output switch_activity/$design.saif  

}

rm log/*

#a1csa
design="a1csa8bits"
sim
design="a1csa16bits"
sim
design="a1csa32bits"
sim
design="a1csa64bits"
sim
design="a1csa128bits"
sim
design="a1csa256bits"
sim

#a1csah
design="a1csah8bits"
sim
design="a1csah16bits"
sim
design="a1csah32bits"
sim
design="a1csah64bits"
sim
design="a1csah128bits"
sim
design="a1csah256bits"
sim

#cla
design="cla8bits"
sim
design="cla16bits"
sim
design="cla32bits"
sim
design="cla64bits"
sim
design="cla128bits"
sim
design="cla256bits"
sim

#cra
design="cra8bits"
sim
design="cra16bits"
sim
design="cra32bits"
sim
design="cra64bits"
sim
design="cra128bits"
sim
design="cra256bits"

#csa
sim
design="csa8bits"
sim
design="csa16bits"
sim
design="csa32bits"
sim
design="csa64bits"
sim
design="csa128bits"
sim
design="csa256bits"
sim

