
shinyUI(fluidPage(
  titlePanel("SeparateCellsApp"),
  
  sidebarLayout(
    sidebarPanel(
           fileInput(inputId = "inputFile", 
                     label = "Import csv:")
    ),
    
    mainPanel(tabsetPanel(
      tabPanel("input",DT::dataTableOutput("input")),
      tabPanel("output",plotOutput("output"))
    ))
    

  )
))





