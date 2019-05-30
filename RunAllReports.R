library(tidyverse)
library(datasets)

regions <- unique(state.region)

region_pdf <- function(i){
  rmarkdown::render(input="RegionTableTemplate.Rmd",
                    intermediates_dir = "Intermediates",
                    output_dir = "PDFs",
                    output_file=str_c("Report_", regions[i], ".pdf"),
                    params=list(region=regions[i]))
  
}

1:4 %>% walk(region_pdf)
