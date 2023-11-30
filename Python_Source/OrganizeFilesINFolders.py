#!/usr/bin/env python
# coding: utf-8

# In[3]:


#####################################
### Organize Files in the Folders ###
#####################################
# Import the os and shutil modules
import os
import shutil

# Define the source and destination folders
#source = "Download"
source = "C:/MASoiC"
#destination = "Temp"
destination = "C:/MASoiC/environment"

# Loop through the files in the source folder
for file in os.listdir(source):
    # Get the full path of the file
    file_path = os.path.join(source, file)
    # Check if the file is a regular file (not a directory or a link)
    if os.path.isfile(file_path):
        # Move the file to the destination folder
        shutil.move(file_path, destination)
        # Print a message to confirm the move
        print(f"Moved {file} from {source} to {destination}")


# In[ ]:




