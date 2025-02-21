#!/bin/bash

# Get new project name
new_projname=$1

# Copy base project
cp -R TestVersionCtrl_proj $new_projname

# In new project, replace all filenames and file contents to new project name
cd $new_projname
find . -type f -name "*TestVersionCtrl_proj*" -exec rename -- s/\TestVersionCtrl_proj/$new_projname/ {} + 
find . -type f -exec sed -i s/TestVersionCtrl_proj/$new_projname/g {} +
