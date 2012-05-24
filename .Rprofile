# Sample Rprofile.site file 

# Things you might want to change
options(papersize="letter") 
options(editor="vim") 
# options(pager="internal")

# R interactive prompt 
options(prompt="  ")
options(continue="+ ") 

# to prefer Compiled HTML 
# help options(chmhelp=TRUE) 
# to prefer HTML help 
# options(htmlhelp=TRUE) 

# General options 
options(tab.width = 2) 
options(width=160)
options(graphics.record=TRUE) 

# Repositories
r <- getOption("repos")
r["CRAN"] <- "http://cran.mirrors.hoobly.com"
options(repos = r)
rm(r)

#These make errors easier to see.
options(showWarnCalls=T, showErrorCalls=T)

#Long history
Sys.setenv(R_HISTSIZE='100000')

#Logging
sink(file = 'R.log', split=T)

.First <- function(){
  library(ggplot2)
  library(reshape2)
  library(plyr)
  library(stringr)
  library(RColorBrewer)
}

.Last <- function() {
  if (!any(commandArgs()=='--no-readline') && interactive()){
    require(utils)
    try(savehistory(Sys.getenv("R_HISTFILE")))
  }
}
