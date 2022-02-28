library(shiny)

#call shiny
ui <- fluidPage(sliderInput(inputId = "num", label = "Choose a number", 
                            value =20, min=1, max=100),
                plotOutput("hist"))

#backend
server <- function(input, output) {
  output$hist<-renderPlot({
    title<-"100 random normal values"
    hist(rnorm(input$num), col="red", main=title)})
}

shinyApp(ui=ui, server=server)
