data(mtcars)
library(ggplot2)
shinyServer(
        function(input, output) {

           output$mpgplot <- renderPlot({
                
                if (input$am == "Automatic") { y <- 0}
                else {y <- 1}   
                    
                if (input$cyl == "All"){
                x <- mtcars[(mtcars$am == y),]
                boxplot(x$mpg,col = "lightblue", ylab = "Miles/Gallon")
                output$meanValue <- renderPrint({round(mean(x$mpg),2)})
                }
                
                else{
                x <- mtcars[((mtcars$cyl == input$cyl) & (mtcars$am == y)),]
                boxplot(x$mpg,col = "lightblue", ylab = "Miles/Gallon")
                output$meanValue <- renderPrint({round(mean(x$mpg),2)})
                    }
           })                          
           
        }
)