##################################
# Website my github              #
# by Mailson Santos              #
# app.R file                     #
##################################

library(shiny)
library(shinydashboard)
library(shinycssloaders)

###########
# LOAD UI # 
###########

ui <- fluidPage(
  
  # load custom stylesheet
  ###  includeCSS("www/style.css"),
  
  # load page layout
  dashboardPage(
    
   # skin = "blue",
      
    dashboardHeader(title="Perfil", titleWidth = 190),
    
    dashboardSidebar(width = 190,
       
        sidebarMenu(
            HTML(paste0(
                "<br>",
                "<a href= target='_blank'>
                 <img style = 'display: block; margin-left: auto; margin-right: auto;' src='foto.png' width = '100'></a>", 
                "<br>",
                "<p style = 'text-align: center;'>Mailson Santos</p>" ,
                "<table style='margin-left:auto; margin-right:auto;'>",
                "<tr>",                                                                                 
                "<td style='padding: 5px;'><a href='https://github.com/mailsonsantos2020/mailsonsantos2020' ><i class='fab fa-github fa-lg'></i></a></td>",
                "<td style='padding: 5px;'><a href='https://www.linkedin.com/in/mailson-melo-dos-santos-81928a30/' ><i class='fab fa-linkedin fa-lg'></i></a></td>",
                "<td style='padding: 5px;'><a href='link=mailto:mailson.melo.santos@gmail.com' ><i class='fab fa-google-plus-square fa-lg'></i></a></td>",
                "</tr>",
                "</table>",
                "<br>" 
            )),
                       
            menuItem("Home", tabName = "home", icon = icon("home")),
            menuItem("Sobre", tabName = "sobre", icon = icon("user-circle")), 
            menuItem("Curriculo", tabName = "curriculo", icon = icon("id-card")),
            menuItem("Projetos", tabName = "projetos", icon = icon("tasks")),
            menuItem("Certificados", tabName = "certificados", icon = icon("certificate")),
            menuItem("Contato", tabName = "contato", icon = icon("envelope-o"))
            
        ) # end sidebarMenu
                     
    ), # end dashboardSidebar
    
    dashboardBody(
      
      tags$head(tags$style(HTML('
                                /* logo */
                                .skin-blue .main-header .logo {
                                background-color: #000000;   
                                }

                                /* logo when hovered */
                                .skin-blue .main-header .logo:hover {
                                background-color: #000000;
                                }

                                /* navbar (rest of the header) */
                                .skin-blue .main-header .navbar {
                                background-color: #000000;
                                }

                                /* main sidebar */
                                .skin-blue .main-sidebar {
                                background-color: #000000;
                                }

                                /* body */
                                .content-wrapper, .right-side {
                                background-color: #FFFFFF; 
                                }

                                '))),
      
      tabItems(
        
        tabItem(tabName = "sobre", ##class = "active",
                
            # sobre section
#            includeMarkdown("www/xx.Rmd")
#            includeMarkdown("www/sobre5.Rmd")
            includeMarkdown("www/sobre1.md"),
               
            fluidRow(
                # Foto
                box(width = 4, solidHeader = T, status = 'primary',
                    
                  # foto
                  fluidRow(
                    column(width = 12, align = "center",
                           img(src="foto.png", width='80%' ) )
                  )
                ),  # Box width = 4, solidHeader = T, status = 'primary'
                
                # Dados pessoais
                box(width = 8, solidHeader = T, status = 'primary',
                    
                    # foto
                    fluidRow(
                      column(width = 12, align = "left",
                             includeMarkdown("www/sobre3.md") )
                    )
                ),  # Box width = 8, solidHeader = T, status = 'primary'
                
            ),  # fluidRow(
            
            includeMarkdown("www/sobre4.md"),

            downloadLink("downloadData", "Download Currículo"),
            br(),br(),
            
            # Skills
            box(width = 12, title = "Habilidades para Ciência de Dados", 
                solidHeader = T, status = 'primary',
                
                # imagem
                fluidRow(
                  column(width = 12, align = "center",
                         img(src="Skills.png", width='100%') )
                )
            ),  # Box width = 12, title = "Habilidades", solidHeader = T, status = 'primary'
            
            
        ),
        
        tabItem(tabName = "contato", 
                
                # contato section           
                includeMarkdown("www/releases.md")
        )  ,
        
        tabItem(tabName = "home",  class = "active",
                
                # home section
                includeMarkdown("www/home.md")
        ),
        


        tabItem(tabName = "curriculo",
          
          # curriculo section
          # dataTableOutput("speciesDataTable") %>% withSpinner(color = "green")
          
        ),
        
        
        tabItem(tabName = "projetos", 
              
          # projetos section
        #  includeMarkdown("www/tree.md"),
        #  column(3, uiOutput("parkSelectComboTree")),
        #  column(3, uiOutput("categorySelectComboTree")),
        #  collapsibleTreeOutput('tree', height='700px') %>% withSpinner(color = "green")
          
        ),
      
        
        tabItem(tabName = "certificados",
          
          # certificados section
    #      includeMarkdown("www/charts.md"),
    #      fluidRow(column(3, uiOutput("categorySelectComboChart"))),
    #      column(6, plotOutput("ggplot2Group1") %>% withSpinner(color = "green")),
    #      column(6, plotOutput("ggplot2Group2") %>% withSpinner(color = "green"))
    #      
        ) #, 
        
              
      )
    
    ) # end dashboardBody
  
  )# end dashboardPage

)  ##) ui 