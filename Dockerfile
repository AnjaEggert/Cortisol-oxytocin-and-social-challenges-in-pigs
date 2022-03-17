FROM rocker/tidyverse:4.1.2

# install further packages
RUN sudo R -e "install.packages('kableExtra')" \
    && sudo R -e "install.packages('cowplot')" \
    && sudo R -e "install.packages('patchwork')" \
    && sudo R -e "install.packages('lme4')" \
    && sudo R -e "install.packages('lmerTest')" \
    && sudo R -e "install.packages('merTools')" \
    && sudo R -e "install.packages('performance')" \
    && sudo R -e "install.packages('see')" \
    && sudo R -e "install.packages('emmeans')" \
    && sudo R -e "install.packages('lsmeans')" \
    && sudo R -e "install.packages('multcomp')" \
    && sudo R -e "install.packages('multcompView')" \
    && sudo R -e "install.packages('ggpubr')" \
    && sudo R -e "install.packages('ggforce')" \
    && sudo R -e "install.packages('lazyWeave')" \
    && sudo R -e "install.packages('rstatix')"

# define work folder
WORKDIR /opt/Docker-prosocial-pigs
