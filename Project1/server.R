library(shiny)
library(UsingR)
data(father.son)
fs<-father.son
testermike <- 
shinyServer(
	function(input, output)
	{	
		output$oid2 = renderPrint({
			if (input$id2 == "Fathers Height"){
				"You selected to display the Fathers Height column"
			}
			else if (input$id2 == "Sons Height"){
				"You selected to display the sons Height Column"
			}
		})
		
		output$graphicaloutput <- renderPlot({
			if (input$id2 == "Fathers Height"){
			hist(father.son$fheight, xlab=paste("Fathers Heights:","number of bins", as.character(input$bins)), breaks = as.numeric(input$bins), main="You selected to display the Fathers height column",col=as.character(input$color))
			}
			else if (input$id2 == "Sons Height"){
				hist(father.son$sheight, xlab=paste("Sons Heights:","number of bins", as.character(input$bins)), breaks = as.numeric(input$bins), main="You selected to display the Sons height column", col=as.character(input$color))
			}
		})
		
	}
)