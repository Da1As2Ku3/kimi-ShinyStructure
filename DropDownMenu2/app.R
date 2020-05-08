

library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Notification menus",
                    dropdownMenu(type="notification",
                                 notificationItem(
                                     text="5 new users today",
                                     icon=icon("users")
                                 ),
                                 notificationItem(
                                     text="12 items delivered",
                                     icon=icon("truck"),
                                               status="success"
                                 ),
                                 notificationItem(
                                     text="Server load of 86%",
                                     icon=icon("exclamation triangle"),
                                     status="warning"
                                 
                                 ))
                            ),
                    dashboardSidebar(),
                    dashboardBody()
)


server<-function(input,output){
    
}

shinyApp(ui,server)