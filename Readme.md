- in Windows: open PowerShell
- change directory to the one containing the Dockerfile: 
cd D:\Eggert\Documents\Docker\piglets-paper
  
- build Docker image, run following line in PowerShell
docker build -t pigs-image .

- Change to Docker Desktop, go to "Images"

- RUN image (click on blue arrow), but also set Host and Container paths:
D:\Eggert\Documents\Docker\piglets-paper
/opt/piglets-paper


- open console from container (>_)
Rscript -e "rmarkdown::render('prosocial-pigs-part1.Rmd')"
Rscript -e "rmarkdown::render('prosocial-pigs-part2.Rmd')"

- alternatively (??):
docker run --rm -it -v d:\Eggert\Documents\Docker\piglets-paper:/opt/piglets-paper pigs-image

- you could also save the pigs-image (instead of the Dockerfile to create it)
- in PowerShell run:
docker save -o pigs-image.tar pigs-image
docker load pigs-image.tar

