

library(DT)


shinyServer(function(input, output) {


  data_set <- reactive({if(is.null(input$inputFile)) return(NULL)
    read.csv(input$inputFile$datapath,row.names=1, header = TRUE, sep=",")
  })
  


  output$input <- DT::renderDataTable(data_set(),selection = list(target='column'))
  output$output <- DT::renderDataTable(data_set(),selection = list(target='column'))
  

})