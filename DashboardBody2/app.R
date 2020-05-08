

library(shiny)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Body-Box header,color and title",titleWidth=450),
    dashboardSidebar(),
    dashboardBody(
        fluidRow(
            box(title="Histogram",
                status="primary",
                solidHeader=TRUE,
                plotOutput("plot3",height=250)),
            box(
                title="Inputs",
                status="warning",
                solidHeader=TRUE,
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