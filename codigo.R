library(shiny)

# k-means

path     <- "exemplos/01-kmeans/"
arquivos <- list.files(path)

for (j in arquivos){
  file.edit(paste0(path, j))
}




