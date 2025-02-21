# Software

Folder contains necessary sources Cfiles for the baremetal application
Be used for Vitis Classic 2023.2 
VIVADO USED 2023.2

After generating hardware description file (.xsa), open Vitis Classic:
Create New Application project
Import the .xsa file
After creating project right click on <project_name>_app -> New-> Folder. Click on Advanced >> Link to alternatice location (Linked Folder) and select the path to thi "sw" folder. The IDE will use and edit these files for the project instead of local ones.

Note: datasets used will not be stored in git, stored locally at /loca/home/mb274643/Desktop/GIT_REPOS
