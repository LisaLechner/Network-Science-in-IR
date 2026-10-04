# Step 1: Install R and RStudio

You need **both**: R is the programming language, RStudio is the program you work in.

1. **Install R** (version 4.4 or newer) from <https://cran.r-project.org>.
   - macOS: pick the installer for your chip (Apple silicon = arm64, older Intel Macs = x86_64). Check via Apple menu → About This Mac.
   - Windows: choose "base", then download and run the installer.
2. **Install RStudio Desktop** from <https://posit.co/download/rstudio-desktop/>.
3. **Windows only:** install **Rtools** from <https://cran.r-project.org/bin/windows/Rtools/> (matching your R version). Some network packages need it.
4. **macOS only:** open the Terminal and run `xcode-select --install` to get the developer tools.
5. **Install Git** (needed to get the course materials):
   - macOS: included with the developer tools from step 4.
   - Windows: download from <https://git-scm.com/download/win> and accept the defaults.

**Check:** open RStudio and type `R.version.string` in the Console. You should see version 4.4 or newer.
