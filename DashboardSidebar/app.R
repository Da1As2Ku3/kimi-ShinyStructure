

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Dashboard Sidebar"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Dashboard",tabName="dashboard",icon=icon("dashboard")),
            menuItem("Widgets",tabName="widgets",icon=icon("th"),badgeLabel="new",badgeColor="green")
            
        )
        
    ),
    dashboardBody(
        tabItems(
            tabItem(tabName="dashboard",
                    h2("Dashboard tab content")
                    ),
            tabItem(tabName="widgets",
                    h2("Widgets tab content"))
        )
    )
    
)

server<-function(input,output){}

shinyApp(ui,server)