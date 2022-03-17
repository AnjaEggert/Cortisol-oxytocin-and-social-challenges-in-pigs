# Cortisol-oxytocin-and-social-challenges-in-pigs

This repository contains data and source code to reproduce the data and statistical analysis and figures in the manuscript:

Salivary cortisol, but not oxytocin, varies with social challenges in domestic pigs: Implications for measuring emotions
by Liza R. Moscovice, Anja Eggert, Ulrike Gimsa

Research Institute for Farm Animal Biology (FBN), Dummerstorf, Germany 

## License

[![Creative Commons License](https://i.creativecommons.org/l/by/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)

This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

In order to reference this software, please consider the information in the [CITATION.cff](CITATION.cff) file.

## Usage

We run the data and statistical analysis on Windows 10 and the described workflow is adapted to this.

1. THE REPOSITORY CONTAINS:
  * Dockerfile
  * Folder `data` with 4 files:
    + `calibration-curve.csv`
    + `prosocial-pigs-behavior-1.csv`
    + `prosocial-pigs-behavior-2.csv`
    + `prosocial-pigs-hormones.csv`
  * Folder `scripts` with 2 files:
    + `fe-re-tab.r`
    + `glmm_stability.r`
  * R-Markdown files to render html files:
    + `prosocial-pigs-calibration.Rmd`
    + `prosocial-pigs-behavior.Rmd`
    + `prosocial-pigs-hormones.Rmd`
  * html files rendered from the R-markdown files:
    + `prosocial-pigs-calibration.html`
    + `prosocial-pigs-behavior.html`
    + `prosocial-pigs-hormones.html`
 
2. INSTALL DOCKER DESKTOP

  * If you use Windows, you can download Docker Desktop for Windows here: https://docs.docker.com/desktop/windows/install/
 
3. DOCKERFILE

  * The Dockerfile is a text file that Docker reads in from top to bottom. It contains the instructions HOW the Docker image should get built. It is like recipes in cooking.
  * Typically, you do not start the Dockerfile from scratch, you use a base Docker image which you can select on https://hub.docker.com. In this way you only need to specify a few more things in the Dockerfile.
  * As we use tidyverse-way of computing, I choose rocker/tidyverse:4.1.2.
  * In addition to the tidyverse packages, we need to install a few more specific R packages.

4. BUILD DOCKER IMAGE IN POWERSHELL

  *	Run Docker Desktop & Open Windows PowerShell.
  *	Change directory to the one containing the Dockerfile.
  *	To build the Docker image (I call it `pigs-image`), run following line in PowerShell:
    + `docker build -t pigs-image .`
  * Depending on the size of the Docker image and the number of R packages to be installed, this may take a few minutes. It took 260.4 sec on my computer.

5. RUNNING DOCKER IMAGE = CONTAINER

  * Change to Docker Desktop and click in the left menu bar on “Images”. The just created “pigs-image” is listed.
  * Click on the blue arrow to RUN the pigs-image. Check “Optional settings” and set Host Path (`D:\user\Documents\Docker-prosocial-pigs`) and Container Path (`/opt/Docker-prosocial-pigs`).
  * Now RUN the image. A running Docker image is called Docker container.
  * The running image will now be listed when you click in the left menu bar on “Containers/Apps”
  * Click on the `>_` symbol that opens a Docker console from the image and then run the following code:
    + Rscript -e "rmarkdown::render('prosocial-pigs-calibration.Rmd')"
    + Rscript -e "rmarkdown::render('prosocial-pigs-behavior.Rmd')"
    + Rscript -e "rmarkdown::render('prosocial-pigs-hormones.Rmd')"
 
 4. RESULTS
 
  * Following html files will contain the data and statistical analysis and figures of the manuscript:
    + `prosocial-pigs-calibration.html`
    + `prosocial-pigs-behavior.html`
    + `prosocial-pigs-hormones.html`

