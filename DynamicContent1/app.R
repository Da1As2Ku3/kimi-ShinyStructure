

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Sidebar-Dynamic Content1",titleWidth = 400),
    dashboardSidebar(
        sidebarMenu(
            menuItemOutput("menuItem")
        )
    ),
    dashboardBody()
)

server<-function(input,output){
    output$menuItem<-renderMenu({
        menuItem("Menu Item",icon=icon("calendar"))
    })
}

shinyApp(ui,server)
