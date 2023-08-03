library(palmerpenguins)

# Define path to output file
output_tsv <- here::here("results", "penguins_2008.tsv")

# Create data frame of only 2008 penguins
penguins_2008 <- penguins |>
  dplyr::filter(year == 2008)

# Export to TSV
readr::write_tsv(penguins_2008, output_tsv)
