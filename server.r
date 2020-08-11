##################################
# Website my github              #
# by Mailson Santos              #
# app.R file                     #
##################################

library(shiny)
library(shinydashboard)
library(shinycssloaders)

###############
# LOAD SERVER # 
###############

# Define server logic required to draw a histogram
server <- function(input, output) {
    
  
  ## Download PDF
  output$downloadData <- downloadHandler(
    filename = "your-pdf-name.pdf",
    content = function(file) {
      file.copy("www/teste.pdf", file)
    }
  )

  
  
}