
library(shiny)
library(shinydashboard)


ui<-dashboardPage(
    dashboardHeader(title="Task Menus",
                    dropdownMenu(type="tasks",
                                 badgeStatus = "success",
                                 taskItem(value=90,
                                          color="green",
                                          "Documentation"
                                          ),
                                 taskItem(value=17,
                                          color="aqua",
                                          "Project X"
                                          ),
                                 taskItem(value=75,
                                          color="yellow",
                                          "Server deployment"
                                          ),
                                 taskItem(value=80,
                                          color="red",
                                          "Overall project"
                                          ))
                    ),
    dashboardSidebar(),
    dashboardBody()
    
)

server<-function(input,output){ }

shinyApp(ui,server)
