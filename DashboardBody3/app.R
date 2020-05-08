

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Body-Boxes with solid header and collapse",titleWidth=600),
    dashboardSidebar(),
    dashboardBody(
        fluidRow(
            box(
                title="Histogram",
                solidHeader=TRUE,
                collapsible=TRUE,
                plotOutput("plot3",height=250)
            ),
            box(title="Inputs",
                solidHeader=TRUE,
                "Box content here",
                br(),
                "More box content",
                sliderInput("slider","Slider input:",min=1,max=100,value=50),
                textInput("text","Text input:"))
        )
    )
)

server<-function(input,output){
    
}

shinyApp(ui,server)
