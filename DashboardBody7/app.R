

library(shiny)
library(shinydashboard)

ui<-dashboardPage(
    dashboardHeader(title="Dashboard Body-value boxes"),
    dashboardSidebar(),
    dashboardBody(
        #A static value box
        fluidRow(
            valueBox(
                value=10*2,
                "New Orders",
                icon=icon("credit-card")
            ),
            #Dynamic value box
            valueBoxOutput("progressBox"),
            valueBoxOutput("approvalBox")
        ),
        fluidRow(
            #clicking this will increase the progress amount
            box(width=4,actionButton("count","Increment progress"))
        )
    )
)

server<-function(input,output){
    output$progressBox<-renderValueBox({
        valueBox(
            value=paste0(25+input$count,"%"), 
            "Progress",
            icon=icon("list"),
            color="purple"
        )
    })
    output$approvalBox<-renderValueBox({
        valueBox(
            value="80%",
            "Approval",
            icon=icon("thumbs-up",lib="glyphicon"),
            color="yellow"
            
        )
    })
}

shinyApp(ui,server)
