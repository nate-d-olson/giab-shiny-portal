# 1. Install necessary packages
install.packages(c("shiny", "dplyr", "ggplot2", "DT"))

# 2. Load the required libraries
library(shiny)
library(dplyr)
library(ggplot2)
library(DT)

# 3. Load the metadata tables (csv files) into R
bam_metadata <- read.csv("data/bam_metadata.csv")
fastq_metadata <- read.csv("data/fastq_metadata.csv")
vcf_metadata <- read.csv("data/vcf_metadata.csv")

# 4. Create the UI for the Shiny app
ui <- fluidPage(
  titlePanel("Metadata Summary"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("table_choice", "Choose a metadata table:", 
                  choices = c("BAM" = "bam_metadata", "FASTQ" = "fastq_metadata", "VCF" = "vcf_metadata")),
      
      selectInput("summary_choice", "Choose a summary statistic:",
                  choices = c("File Size" = "filesize_in_Gb", "BioSample" = "biosample", "Trio" = "trio"),
                  selected = "filesize_in_Gb")
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Summary", plotOutput("summary_plot")),
        tabPanel("BAM Metadata", DTOutput("bam_table")),
        tabPanel("FASTQ Metadata", DTOutput("fastq_table")),
        tabPanel("VCF Metadata", DTOutput("vcf_table"))
      )
    )
  )
)

# 5. Create the server logic for the Shiny app
server <- function(input, output) {
  output$summary_plot <- renderPlot({
    req(input$table_choice, input$summary_choice)
    
    # Select the appropriate metadata table
    metadata <- switch(input$table_choice,
                       "bam_metadata" = bam_metadata,
                       "fastq_metadata" = fastq_metadata,
                       "vcf_metadata" = vcf_metadata)
    
    # Create summary figure
    ggplot(metadata, aes_string(x = input$summary_choice)) +
      geom_histogram(binwidth = 1) +
      labs(title = paste("Summary of", input$summary_choice),
           x = input$summary_choice,
           y = "Frequency") +
      theme_minimal()
  })
  
  # Render interactive tables for metadata
  output$bam_table <- renderDT({ DT::datatable(bam_metadata, options = list(pageLength = 10)) })
  output$fastq_table <- renderDT({ DT::datatable(fastq_metadata, options = list(pageLength = 10)) })
  output$vcf_table <- renderDT({ DT::datatable(vcf_metadata, options = list(pageLength = 10)) })
}

# 6. Run the Shiny app
shinyApp(ui = ui, server = server)
