#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30)
,
    

        sliderInput("sliderMPG",
                    "Something MPG Related:",
                    min = 10,
                    max = 35,
                    value = 30),
    # Show if statements for the model 
    radioButtons("showModel", "showModel:",
             c("Yes" = "True",
               "No" = "False")),
    
    # Show if statements for the model 
    radioButtons("showModel2", "showModel2:",
                 c("Yes" = "True",
                   "No" = "False"))
    
    ),
    
    
    

    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot"),
       textOutput("pred1"),
       textOutput("pred2")
    )
  )
))


