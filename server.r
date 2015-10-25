library(shiny)
library(caret)
library(RCurl)
#install.packages("HistData")
library(HistData)

md <- train(child~parent,method = "glm", data = Galton) 

shinyServer(
  function(input,output)
{
  
    #output$zip <- renderText(as.numeric(input$Zip))
    output$chldhgt <- renderPrint({
      parent = as.numeric(input$Height)
      child <- predict(md,data.frame(parent))
      as.numeric(child)
      })
    #output$reactve <- renderText({paste(input$Name,input$State)})
  }
  )
