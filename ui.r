library (shiny)

shinyUI(fluidPage(
                  titlePanel(title = "Estimate childs height using parents height using GLM prediction algorithm"),
                  sidebarLayout(
                    sidebarPanel(("Please enter the details"),
                      numericInput("Height","Enter the avg height of the parents(inches)","")),
                    mainPanel(("Expected height of Child (in inches)"),
                      textOutput("chldhgt"))
                    )
                  )
)
        
