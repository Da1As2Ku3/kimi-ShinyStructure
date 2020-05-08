#
# 

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Sidebar-Dynamic Content",titleWidth=400),
    dashboardSidebar(
        sidebarMenuOutput("menu")
    ),
    dashboardBody()
)

server<-function(input,output){
    output$menu<-renderMenu({
        sidebarMenu(
            menuItem("Menu Item",icon=icon("calendar"))
        )
    })
}

shinyApp(ui,server)
