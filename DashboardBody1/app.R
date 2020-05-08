

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Body - basic boxes",titleWidth=350),
    dashboardSidebar(),
    dashboardBody(
        fluidRow(
            box(title="Histogram",
                status="primary",
                plotOutput("plot2",height=250)),
            box(
                title="inputs",
                status="warning",
                "Box content here",
                br(),
                "More box content ",
                sliderInput("slider","Slider input:",min=1,max=100,value=50),
                textInput("text","Text input:")
            )
        )
    )
)

server<-function(input,output){
    
}

shinyApp(ui,server)