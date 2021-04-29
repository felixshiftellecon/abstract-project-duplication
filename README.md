# abstract-project-duplication
This script copies the master branch of a Versions project into another Versions project, including one in another organization. 

### Technical Considerations

* Libraries will be copied as regular files and will need to be turned back into libraries (see [Abstract's Libraries article](https://help.abstract.com/hc/en-us/articles/360049925392-Adding-libraries#convert-an-existing-sketch-file-to-a-library) for instructions)
* Symbol references may need to be corrected (See [Abstract's Managing Libraries article](https://help.abstract.com/hc/en-us/articles/360049925432-Managing-libraries) for instructions)
* Only the master branch will be copied but having open branches does not interfere
* The script uses bash to copy directories, it does not use the CLI or git

### Instructions

1. Merge all branches with wanted changes to master
1. Create a new project to paste into on the Desktop app
1. **Help > Enable Development Menu**
1. In the paste project, download the project via **"..."/right click menu > Development > Force Sync Project**
1. Run the script by double clicking
1. Go through the Terminal prompts
1. The prompts will require project IDs which can be copied via the project's **"..."/right click menu > Development > Copy project ID**
1. Refresh the Desktop app **CMD + R**
1. Commit the changes that appear on master (the commit can take a few seconds to appear)
1. Confirm the sync went through and copied project appears on the Web app
1. **Help > Disable Development Menu**

This script automates the movement of files in Abstract's directorys for the steps listed in [How to duplicate an Abstract project from Medium](https://uxdesign.cc/how-to-duplicate-an-abstract-project-1dd61ba763f)
