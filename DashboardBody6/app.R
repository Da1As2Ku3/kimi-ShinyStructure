

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Body-Info Boxes",titleWidth=400),
    dashboardSidebar(),
    dashboardBody(
        #info boxes with fill=FALSE
        fluidRow(
            # a static info box
            infoBox(
                title="New Orders",
                value=10*2,
                icon=icon("credit-card")
            ),
            # Dynamic info boxes
            infoBoxOutput("progressBox2"),
            infoBoxOutput("approvalBox2")
        ),
        # info boxes with fill=TRUE
        fluidRow(
            infoBox(
                title="New Orders",
                value=10*2,
                icon=icon("credit-card"),
                fill=TRUE
            ),
            infoBoxOutput("progressBox2"),
            infoBoxOutput("approvalBox2")
        ),
        fluidRow(
            #clicking this will increase the progress amount
            box(width=4,actionButton("count","Increment progress"))
        )
    )
)

server<-function(input,output){
    output$progressBox2<-renderInfoBox({
        infoBox(
            title="Progress",
            value=paste0(25+input$count,"%"),
            icon=icon("list"),
            color="purple"
        )
    })
    output$approvalBox2<-renderInfoBox({
        infoBox(
            title="Approval",
            value="80%",
            icon=icon("thumbs-up",lib="glyphicon"),
            color="yellow"
        )
    })
    # same as above but with fill=TRUE
    output$progressBox2<-renderInfoBox({
        infoBox(
            title="Progress",
            value=paste0(25+input$count,"%"),
            icon=icon("list"),
            color="purple",
            fill=TRUE
        )
    })
    output$approvalBox2<-renderInfoBox({
        infoBox(
            title="Approval",
            value="80%",
            icon=icon("thumbs-up",lib="glyphicon"),
            color="yellow",
            fill=TRUE
        )
    })
}
shinyApp(ui,server)
