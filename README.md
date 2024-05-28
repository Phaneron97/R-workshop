# README
Welcome to the repo for the workshop about R for Inholland Information Technologies, 2024.

To use R locally, you'll need only program called "R-base" and an editor or IDE.

## OS installation instructions

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

## Installing packages on Windows & Linux
1. To run R in the terminal/commandprompt/powershell, type `R` or `R.exe` and press enter
2. Install the required packages to run the workshop with 1 command:
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("magrittr")
3. Click `install` for each of them
4. You are done!

