

library(shiny)
library(shinydashboard)

ui<-dashboardPage(
    dashboardHeader(title="Message menus",
                    dropdownMenu(type="messages",
                                 messageItem(
                                     from="Sales Dept",
                                     message="Sales are study this month"
                                 ),
                                 messageItem(
                                     from="New user",
                                     message="How do I register?",
                                     icon=icon("question"),
                                     time="13:45"
                                 ),
                                 messageItem(
                                     from="Support",
                                     message="The new server is ready",
                                     icon=icon("life-ring"),
                                     time="2014-12-01"
                                 ))
                    ),
    dashboardSidebar(),
    dashboardBody()
)

server<-function(input,output){
    
}

shinyApp(ui,server)
