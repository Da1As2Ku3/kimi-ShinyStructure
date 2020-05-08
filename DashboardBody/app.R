

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Body - Boxes",titleWidth=300),
    dashboardSidebar(),
    dashboardBody(
        fluidRow(
            box(plotOutput("plot1")),
            box(
                "Box content here",
                br(),
                "More box content",
                sliderInput("slider","Slider input:",min=1,max=100,value=50),
                textInput("text","text input")
            )
        )
    )
) 

server<-function(input,output){
    
}

shinyApp(ui,server)
