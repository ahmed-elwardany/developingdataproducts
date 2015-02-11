library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("(mtcars) Dataset Plotting Application"),
        
        sidebarPanel(
                p('(mtcars) dataset was extracted from the 1974 Motor 
                   Trend US magazine, and comprises fuel consumption and 10 
                   aspects of automobile design and performance for 32 
                   automobiles (1973-74 models)'),
                h1(''),
                
                p('Just click on your desired cylinder value and type of 
                  transmission and then press submit'),
                radioButtons(inputId = 'cyl',label = "Cylinders Value", 
                                   choices = c(4,6,8, "All")),
                radioButtons(inputId = 'am',label = "Transmission Type", 
                             choices = c("Automatic", "Manual")),
                submitButton('Submit')
                
        ),
        mainPanel(
                h4('How it works?'),
                
                p('This App will simply plot the miles/gallon (mpg) distribution 
                   based on your selected cylinders value and type of
                   Transmission in addition to printing out the mean value 
                   calculated'),                
                h1(''),
                p('Mean Value (mpg)'),
                verbatimTextOutput('meanValue'),
                plotOutput('mpgplot')

                
        )
))