

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Body-column layout",titleWidth=300),
    dashboardSidebar(),
    dashboardBody(
        fluidRow(
            column(width=4,
                   box(
                       title="Box title",
                       width=NULL,
                       status="primary",
                       "Box content"
                   ),
                   box(
                       title="Title1",
                       width=NULL,
                       solidHeader=TRUE,
                       status="primary",
                       "Box content"
                   ),
                   box(
                       width=NULL,
                       background="navy",
                       "A box with a solid navy background"
                   )),
            column(width=4,
                   box(
                       status="warning",
                       width=NULL,
                       "Box content"
                   ),
                   box(
                       title="Title3",
                       width=NULL,
                       solidHeader=TRUE,
                       status="warning",
                       "Box content"
                   ),
                   box(
                       title="Title5",
                       width=NULL,
                       background="aqua",
                       "A box with a solid aqua background"
                   )),
            column(width=4,
                   box(
                       title="Title2",
                       width=NULL,
                       solidHeader=TRUE,
                       "Box content"
                   ),
                   box(
                       title="Title6",
                       width=NULL,
                       background="maroon",
                       "A box with a solid maroon background"
                   ))
        )
    )
)

server<-function(input,output){
    
}

shinyApp(ui,server)
