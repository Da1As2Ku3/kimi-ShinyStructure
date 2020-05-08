

library(shiny)


ui<-dashboardPage(
    dashboardHeader(title="DashboardBody-row layout",titleWidth=300),
    dashboardSidebar(),
    dashboardBody(
        fluidRow(
            box(
                title="Box title",
                "Box content"
            ),
            box(
                status="warning",
                "Box content"
            )
        ),
        fluidRow(
          box(
              title="Title1",
              width=4,
              solidHeader=TRUE,
              status="primary",
              "Box content"
          ),
          box(
              title="Title2",
              width=4,
              solidHeader=TRUE,
              "Box content"
          ),
          box(
              title="Title3",
              width=4,
              solidHeader=TRUE,
              status="warning",
              "Box content"
          )
        ),
        fluidRow(
            box(
                width=4,
                background="black",
                "A box with a solid black background"
            ),
            box(
                title="Title5",
                width=4,
                background="fuchsia",
                "A box with a solid fuchsia background"
            ),
            box(
                title="Title6",
                width=4,
                background="maroon",
                "A box with a solid maroon background"
            )
        )
    )
) 

server<-function(input,output){
    
}

shinyApp(ui,server)
