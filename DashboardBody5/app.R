

library(shiny)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Body- tab box",titleWidth=400),
    dashboardSidebar(),
    dashboardBody(
        fluidRow(
            tabBox(
                title="First tabBox",
                id="tabset1",
                height="250px",
                tabPanel("Tab1","First tab content"),
                tabPanel("Tab2","tab content 2")
            ),
            tabBox(
                side="right",
                height="250px",
                selected="Tab3",
                tabPanel("Tab1","Tab content 1"),
                tabPanel("Tab2","Tab content 2"),
                tabPanel("Tab3","Note that when side-right, the tab order is reversed.")
            )
            
        ),
        fluidRow(
            tabBox(
                title=tagList(shiny::icon("gear"),"tabBox status"),
                tabPanel("Tab1","Currently selected tab from first box",
                         verbatimTextOutput("tabset1Selected")),
                tabPanel("Tab2","Tab content 2")
            )
        )
    )
)

server<-function(input,output){
    output$tabset1Selected<-renderText({
        input$tabset1
    })
    
}

shinyApp(ui,server)
