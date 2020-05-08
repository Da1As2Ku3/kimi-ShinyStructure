

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Body-Box with no colored bar",titleWidth=500),
    dashboardSidebar(),
    dashboardBody(
        fluidRow(
            box(
                title="Histogram",
                background="maroon",
                solidHeader=TRUE,
                plotOutput("plot4",height=250)
            ),
            box(
                title="Inputs",
                background="black",
                "Box content here",
                br(),
                "More box content",
                sliderInput("slider","Slider input:",min=1,max=100,value=50),
                textInput("text","Text input:")
            )
        )
    )
)

server<-function(input,output){
    
}

shinyApp(ui,server)
