shinyUI(fluidPage(  
  titlePanel("Developing Data Products - Course Project : Zarmeen Nasim"),  
  sidebarPanel(    
    sliderInput('mu', 'Choose beta',value = 3721, min = 3000, max = 4000, step = 1)  , 
    # adding the new div tag to the sidebar            
    tags$div(class="header", checked=NA,
             tags$p("Visit github repo :"),
             tags$a(href="shiny.rstudio.com/tutorial", "Click Here!")
    )
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("About",
               mainPanel(
                 includeMarkdown("about.md")
               )
      ),
     
      tabPanel("Dataset",dataTableOutput("table")),
      tabPanel("Plot",plotOutput("plot")),
      tabPanel("ui.R",
               mainPanel(
                 includeMarkdown("ui.md")
               )
      ),
      
      tabPanel("server.R",
               mainPanel(
                 includeMarkdown("server.md")
               )
      )
       
    )
     
  )
))