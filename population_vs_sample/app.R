
library(shiny)
library(tidyverse)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    theme = shinythemes::shinytheme("united"), title = "Population vs. sample",
    h1("Population versus sample (normal distribution)"),
    
    fluidRow(
        sidebarLayout(
            sidebarPanel(width = 2,
                         fluidRow(
                             h3("Population parameters"),
                             numericInput("expectancy", "Expectancy (μ)",
                                          value = 0),
                             numericInput("std", "Standard Deviation (σ)",
                                          value = 1),
                             h3("Sample size"),
                             numericInput("sample_size", "Sample size (n)",
                                          value = 30),
                             numericInput("num_bins", "Histogram bins",
                                          value = 30)
                             
                         )),
            mainPanel(column(plotOutput("population_distribution"), width = 6),
                      column(plotOutput("sample_histogram"), width = 6))
        )
    )
    
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$population_distribution <- renderPlot({
        
        x_range <- seq(input$expectancy - 3*input$std, input$expectancy + 3*input$std,
                       by = 0.01)
        
        y_range <- dnorm(x_range, 
                         mean = input$expectancy,
                         sd = input$std)
        
        tibble(x = x_range, y = y_range) %>% 
            ggplot(aes(x, y)) + 
            geom_line() + 
            coord_cartesian(xlim = c(-5, 5)) + 
            ggtitle("The population distribution") + 
            ylab("Density function")
        
    })
    
    output$sample_histogram <- renderPlot({
        
        smp <- tibble(x = 
                   rnorm(n = input$sample_size,
                         mean = input$expectancy,
                         sd = input$std)) 
        
        smp %>% 
            ggplot(aes(x = x)) + 
            geom_histogram(bins = input$num_bins) + 
            coord_cartesian(xlim = c(-5, 5)) + 
            ggtitle(glue::glue("The sample distribution: mean={round(mean(smp$x),2)}, sd={round(sd(smp$x), 2)}")) + 
            xlab("x")
        
    })


}

# Run the application 
shinyApp(ui = ui, server = server)
