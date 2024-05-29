# README
Welcome to the repo for the workshop about R for Inholland Information Technologies, 2024.

To use R locally, you'll need only program called "R-base" and an editor or IDE.

## Installation per OS

### Linux
*tested on Linux Mint*
1. `sudo apt update -y`
2. `sudo apt install r-base -y`
3. `R --version` Check your R install
4. Reboot if necessary

### Windows
1. Download R-4.4.0 from this link: https://cran.rstudio.com/bin/windows/base
2. Run the .EXE (if you don't know what you're doing, leave all options as default)
3. Reboot if necessary
### Windows (if it doesn't work)
4. Search for "Edit the System environment variables" inside the Control Panel > System Properties
5. On the tab "Advanced" > Click on the button "Environment Variables..."
6. Inside "Use variables for (User)", click on the variable "Path" and press "Edit".
7. Add the bin of your installed R inside the list of Environment Variables. (Example: "C:\Program Files\R\R-4.4.0\bin")
8. Press OK and try again to see if it works now.  

### Web based (not recommended)
Use Google Colab
1. Open and login to Google Colab at https://colab.research.google.com/ 
2. Create a new notebook.
3. Change Runtime -> Change runtime type -> Runtime type to R.

## IDE configuration

### VS Code (recommended)
1. Add R extension for VS Code
2. Add R Debugger for VS Code
3. Reboot vsCode
4. Enter "R" in the command prompt (not powershell) to make changes to R, then run the following commands to install the R kernel:
   * `install.packages('IRkernel') # run in any R environment`
   * `IRkernel::installspec() # Required in jupyter notebook`
    

### RStudio
1. Download RStudio via Anaconda Navigator
2. Test if everything works by creating a new R file with "Hello world!" code

## Installing packages

### Windows
1. Run `R` in the command prompt
2. `install.packages("<packagename>")
3. Click `install`

### Linux
