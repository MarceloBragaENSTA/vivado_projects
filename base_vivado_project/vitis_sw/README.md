# Software

Folder contains necessary sources Cfiles for the baremetal application For Vitis app.
Developping a bare-metal application is a quick way to verify if firmware works as expected, to then proceed with a petalinux build.

To be used for Vitis Classic 2023.2 
VIVADO USED 2023.2

After generating hardware description file (.xsa) in Vivado:
- Open Vitis Classic:
- Create New Application project
- Import the .xsa file

After creating project:
- right click on <project_name>_app -> New-> Folder
- Click on Advanced >> Link to alternatice location (Linked Folder)
- Select the path to "sw" folder

The IDE will use and edit these files for the project instead of local ones this way we can version control the source C files

## Build and Deploy
- Build only application: <project_name>_app->Build
- Build application and BOOT.BIN binary: <project_name>_app_system->Build
- BOOT_BIN find in <vitis_workspace>/<project_name>_app_system/Debug/sd_card
- Store BOOT.BIN in BOOT partition of SD card

Note: datasets used will not be stored in git version control, stored locally at /local/home/mb274643/Desktop/GIT_REPOS
