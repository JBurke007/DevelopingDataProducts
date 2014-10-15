shinyUI(navbarPage("Navigation Bar",
	
	tabPanel('Documentation',
	
		
			mainPanel(
				h1('Application Instructions'),
				br(),
				h3('Navigating the Application'),
				p('The "Father.Son" tab at the top contains the main interactive 
					section of this application'),
				br(),
				h3('How to use the Application'),
				p('The application is a simple example of plotting a histogram
					of the Father.Son data set, with the option of being able to
					select which set of heights is plotted, the size of the bins
					for the histogram, and the color of the bars. ')
				
				
			)
	),
									 
	tabPanel('Father.Son',
					 
	  sidebarLayout(position="left",
			sidebarPanel(
				h2('Options'),
				br(),				
				selectInput('id2', "Select height to Display", c("Fathers Height","Sons Height"), selected = "fheight"),
				br(),
				sliderInput("bins", "Number of bins:", min = 1, max = 50, value = 30),
				br(),
				selectInput('color', "Select color for graph", c("Red", "Blue", "Green", "Yellow"), selected ="Red")
				
			),
			
			mainPanel(
				h3('Input Choice'),
				verbatimTextOutput("oid2"),
				
				h3('Graph'),
				plotOutput('graphicaloutput')
			)
	  ))
									 
))