## ----setup, include=FALSE------------------------------------------------
library(knitr)
opts_chunk$set(fig.path='figure/beamer-',fig.align='center',fig.show='hold',size='footnotesize', small.mar=TRUE)
knit_hooks$set(small.mar = function(before, options, envir) {
    if (before) par(mar = c(14.5, 4, 2, 4)) 
})

## ----options, cache=FALSE, echo=FALSE, eval=TRUE, tidy=TRUE, dpi=144, small.mar=TRUE----
options(width=60, warn=-1)
#par(cex=2)
opts_knit$set(out.format = "latex")
opts_chunk$set(prompt=TRUE, tidy.opts=list(width.cutoff=40), tidy=FALSE, fig.width=5.5, fig.height=5.5)
knit_theme$set("print2")
knit_theme$set("print2") #% ajuste para evitar a zoada do single $

## ----shinyInstall01, echo=TRUE, eval=FALSE-------------------------------
## install.packages("shiny")

## ----shinyInstall02, echo=TRUE, eval=FALSE-------------------------------
## library(shiny)

## ----shinySimples, eval=FALSE--------------------------------------------
## 

