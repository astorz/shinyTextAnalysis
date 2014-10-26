require(shiny)

shinyUI(fluidPage(
    titlePanel("Welcome!!"),
    
    sidebarLayout(
        sidebarPanel(
            helpText('This web application provides basic summary statistics for text input. 
                     You can either type or copy-paste a text segment that you 
                     would like to be analyzed into the text box below. When you are ready,
                     go ahead and press "Submit". Summary statistics will appear on the right.'),
            
            textInput("text", label = h5("Your text here:"),
                     value = ""),
            
            submitButton("Submit"),
            
            br(),
            br(),
            br(),
            
            img(src="textAnalytics.png", height=156, width=248)
               
        ),
        
        mainPanel(
            tags$style(type="text/css",
                       ".shiny-output-error { visibility: hidden; }",
                       ".shiny-output-error:before { visibility: hidden; }"),
            
            h3("Basic text analysis"),
            h5("You entered:"),
            br(),
            em(verbatimTextOutput("text1")), 
            br(),
            h5('Summary statistics for your input:'),
            br(),
            h6('Number of characters:'),
            verbatimTextOutput("nChar"),
            br(),
            h6('Total word count:'),
            verbatimTextOutput("wordCount"),
            br(),
            h6('Median word length (no. of characters):'),
            verbatimTextOutput("myMedian"),
            br(),
            h6('Mean word length (no. of characters):'),
            verbatimTextOutput("myMean"),
            br(),
            h6('The 10 most frequent words are:'),
            plotOutput("myPlot"),
            br()
        )
            
    )
))
