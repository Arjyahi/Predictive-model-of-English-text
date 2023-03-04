suppressWarnings(library(shiny))
suppressWarnings(library(markdown))

# Predict Next Word application UI defined 

# Navigation Bar - Title, Author, Date
shinyUI(navbarPage("Capstone: Course Final Project",
                   tabPanel("Predict the Next Word",
                            HTML("<strong>Author: Arjyahi Bhattacharya </strong>"),
                            br(),
                            HTML("<em>Date: 18/07/2021</em>"),
                            br(),
                            #title for left side of page
                            titlePanel("User Interface"),
                            # Sidebar for user to enter part of a sentence 
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("This box is for the user to enter the words that will be used in the next word prediction."),
                                    textInput("inputString", "Enter part of a sentence here",value = ""),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                # Main panel to display the results of the word prediction
                                mainPanel(
                                    h2("Next Word Prediction"),
                                    verbatimTextOutput("prediction"),
                                    strong("Here is what the user entered:"),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(150,200,255,0.50); color: black;}'),
                                    textOutput('text1'),
                                    br(),
                                    strong("Here is how the next word was Predicted:"),
                                    tags$style(type='text/css', '#text2 {background-color: rgba(0,255,255,0.30); color: black;}'),
                                    textOutput('text2'),
                                    br(),
                                    br(),
                                    br(),
                                    helpText("Shiny is a product of R Studio")
                                )
                            )
                            
                   ),
                   tabPanel("About",
                            mainPanel(
                                includeMarkdown("about.md")
                            )
                   )
)
)