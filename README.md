## Curso de `shiny`

Recentemente fui convidado pela organização da [Semana da Estatística da UFRN 2018](http://www.estatistica.ccet.ufrn.br/) para ministrar um minicurso durante o evento. O tema que escolhi foi a criação de dashboards:

> **Introdução ao `shiny`**
> 
> O `shiny` é um pacote do R que torna mais fácil a construção de páginas interativas para internet. Estas páginas podem ser consideradas como apps que realizam tarefas bem específicas, desde aplicações em ensino até dashboards de análises de dados para empresas. Este mini curso vai mostrar como criar apps com o `shiny` e como compartilhar estes apps com outras pessoas.

A fim de facilitar o entendimento dos alunos do curso, estou compartilhando os slides e o material do curso neste repositório do github. A única exigência para rodar estes comandos no eu computador é instalar, além do R e do RStudio, alguns pacotes específicos. Estes pacotes podem ser instalados a partir do comando abaixo.

    # pacotes de interesse
    pacotes = c("shiny", "shinydashboard", "shinythemes", "plotly", "tidyverse",
      "scales", "knitr", "kableExtra", "ggfortify")
    
    # rode o comando abaixo para verificar se o seu computador possui
    # os pacotes necessários instalados. se faltar algum pacote, ele 
    # vai ser instalado automaticamente
    package.check <- lapply(pacotes, FUN = function(x) {
        if (!require(x, character.only = TRUE)) {
            install.packages(x, dependencies = TRUE)
        }
    })
    
O material utilizado no curso está disponível nas pastas `exemplos` e `slides`.