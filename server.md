---
title: "server.md"
author: "Zarmeen"
date: "March 31, 2016"
output: html_document
---

```{r,echo  = FALSE}
shinyServer(  
  function(input, output) {
    dataset <- mtcars
    
    
    y <- dataset$mpg - mean(dataset$mpg)
    x <- dataset$wt - mean(dataset$wt)
    output$plot <- renderPlot({
      mu = input$mu
      plot(x,y,pch = 21, col = "black", bg = "lightblue",cex = 2,xlab = "Weight(1000 lbs)",ylab = "Miles per Gallon -mpg")
      abline(0,mu, lwd = 3)
      points(0, 0, cex = 2, pch = 19)
      mse <- mean( (y - mu * x)^2 )
      title(paste("beta = ", mu, "mse = ", round(mse, 3)))     
    })
    output$table <- renderDataTable(dataset)
    
  }
)
```
