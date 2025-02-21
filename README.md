# vivado_projects

Git versioning for Vivado projects of EmulDemux
VIVADO USED 2023.2

Based of autogenerated TCL scripts, so, its dependant of vivado version

Workflow:
git clone repository

run make_new_project: it will create a copy of base_vivado_project (a emuldemux_simpleDMA project).
cd <new_project>
vivado -mode batch -source <new_project>.tcl
This will create the project and its block design


Tips:
verify in the autogenerated TCL file that there are no dependancies local to project

folder structure is at follows:
├── base_vivado_project.tcl
├── bd
├── constraints
│   ├── FMC_pins.xdc
│   └── _i_io.xdc
├── src
└── tb

the vivado project will be created after the script is ran:



Need to change at Vivado->Tools->Settings->Project Settings->IP Default IP Location to the path of ip_repo

When generating tcl: Vivado->File->Project->Write Tcl select recreate Block Designs using Tcl
