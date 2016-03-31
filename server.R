data(diamond)

shinyServer(  
  function(input, output) { 
    y <- diamond$price - mean(diamond$price)
    x <- diamond$carat - mean(diamond$carat)
    output$plot <- renderPlot({
      mu = input$mu
      plot(x,y,pch = 21, col = "black", bg = "lightblue",cex = 2,xlab = "Carat",ylab = "Price")
      abline(0,mu, lwd = 3)
      points(0, 0, cex = 2, pch = 19)
      mse <- mean( (y - mu * x)^2 )
      title(paste("beta = ", mu, "mse = ", round(mse, 3)))     
    })
    output$table <- renderDataTable(diamond)
    
  }
)