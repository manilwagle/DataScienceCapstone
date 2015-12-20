################# ~~~~~~~~~~~~~~~~~ ######## ~~~~~~~~~~~~~~~~~ #################
##                                                                            ##
##                      The Psychology of Word Prediction (The Word Psychic)                                                            ##
##                                                                            ##            
##                      Presented by Manil Wagle                              ##
##                                                                            ##
##                                                                            ##
##                                                                            ##
################# ~~~~~~~~~~~~~~~~~ ######## ~~~~~~~~~~~~~~~~~ #################

suppressPackageStartupMessages(c(
        library(shinythemes),
        library(shiny),
        library(tm),
        library(stringr),
        library(markdown),
        library(stylo)))

shinyUI(navbarPage("The Psychology of Word Prediction (The Word Psychic)", 
                   
                   theme = shinytheme("spacelab"),
                   
############################### ~~~~~~~~1~~~~~~~~ ##############################  
## Tab 1 - Predicting the Word

tabPanel("Reading your Mind and Thoughts",
         
         tags$head(includeScript("./js/ga-shinyapps-io.js")),
         
         fluidRow(
                 
                 column(3),
                 column(6,
                        tags$div(textInput("text", 
                                  label = h3("Please enter your thoughts and i will tell you next what you will think:"),
                                  value = ),
                        tags$span(style="color:darkorange",("Non English words are not supported at this time.")),
                        br(),
                        tags$hr(),
                        h4("And my Psychic mind tells, next word you will think of is:"),
                        tags$span(style="color:darkorange",
                                  tags$strong(tags$h3(textOutput("predictedWord")))),
                        br(),
                        tags$hr(),
                        h4("This is the sentence that you entered and was used for prediction:"),
                        tags$em(tags$h4(textOutput("enteredWords"))),
                        align="center")
                        ),
                 column(3)
         )
),

############################### ~~~~~~~~2~~~~~~~~ ##############################
## Tab 2 - About 

tabPanel("About Application",
         mainPanel(
           includeMarkdown("README.md")
         ))
))


