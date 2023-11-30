#!/usr/bin/env python
# coding: utf-8

# In[7]:


########################################################
### Code to Organizer folder to software environment ###
########################################################

import os

directory = "MASoiC"
#parent_dir = "C:/Users/thais/Downloads"
#parent_dir = "C:/Users" # No Permition
parent_dir = "C:/"
path = os.path.join(parent_dir, directory)

os.mkdir(path)

print("Directory '% s' created"% directory)

isExist = os.path.exists(path)

if not isExist:
    print("Please check your access because the Directory '% s' Not created"% directory)
    
#if not isExist:
if isExist:
    ## Create a ENVIRONMENT directory
    directory1 = "environment"
    #parent_dir1 = "C:/Users/thais/Downloads/MASoiC"
    #parent_dir1 = "C:/Users/MASoiC"
    parent_dir1 = "C:/MASoiC"
    path1 = os.path.join(parent_dir1, directory1)
    os.mkdir(path1)
    print("Directory '% s' created"% directory1)

    ## Create a INPUT directory
    directory2 = "input"
    #parent_dir2 = "C:/Users/thais/Downloads/MASoiC"
    #parent_dir2 = "C:/Users/MASoiC"
    parent_dir2 = "C:/MASoiC"
    path2 = os.path.join(parent_dir2, directory2)
    os.mkdir(path2)
    print("Directory '% s' created"% directory2)

    ## Create a OUTPUT directory
    directory3 = "output"
    #parent_dir3 = "C:/Users/thais/Downloads/MASoiC"
    #parent_dir3 = "C:/Users/MASoiC"
    parent_dir3 = "C:/MASoiC"
    path3 = os.path.join(parent_dir3, directory3)
    os.mkdir(path3)
    print("Directory '% s' created"% directory3)
    
    ## Create a PROCESSED directory
    directory4 = "processed"
    #parent_dir4 = "C:/Users/thais/Downloads/MASoiC"
    #parent_dir4 = "C:/Users/MASoiC"
    parent_dir4 = "C:/MASoiC"
    path4 = os.path.join(parent_dir4, directory4)
    os.mkdir(path4)
    print("Directory '% s' created"% directory4)


# In[ ]:




