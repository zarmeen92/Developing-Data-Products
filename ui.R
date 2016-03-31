require(markdown)
shinyUI(fluidPage(  
  titlePanel("Developing Data Products - Course Project : Zarmeen Nasim"),  
  sidebarPanel(    
    sliderInput('mu', 'Choose beta',value = -5.344, min = -10, max = 10, step = 0.01)  , 
    # adding the new div tag to the sidebar            
    tags$div(class="header", checked=NA,
             tags$p("Visit github repo :"),
             tags$a(href="https://github.com/zarmeen92/Developing-Data-Products.git", "Click Here!")
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