# UI: Final Project: Startup Data Vizualization

shinyUI(fluidPage(

    titlePanel("San Francisco Map of Startups and Venture Capital"),

    sidebarLayout(
        sidebarPanel(
            selectInput("location","Location",location_options),
            selectInput("data","Select Data to View", data_options, selected = c("Startups"), multiple = T),
            selectInput("size_option","Include Size Option", size_options, selected = c("No")),
            sliderInput("size","Choose Minimum Company Size in Millions",min = 0, max = 3000, value = 0),
            actionButton("reset","Clear Labels & Table"),
            ),
        mainPanel(
            plotOutput("distPlot",click="click_point", brush = "brush_box"),
            tableOutput("tableInfo")
        )
    )
))

