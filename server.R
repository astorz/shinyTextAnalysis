## Server file
## File path must be set to current working directory
require(shiny)

source("helpers.R")

## Source in function

shinyServer(
    function(input, output) {
        output$text1 <- renderText({ 
            paste(input$text)})
        
        output$nChar <- renderPrint({nChar(input$text)})        
        output$wordCount <- renderPrint({wordCount(input$text)})        
        output$myMedian <- renderPrint({myMedian(input$text)})
        output$myMean <- renderPrint({myMean(input$text)})
        output$myPlot <- renderPlot({
            par(las=2)
            barplot(wordRank(input$text), ylab="Count")
                        
        })
})