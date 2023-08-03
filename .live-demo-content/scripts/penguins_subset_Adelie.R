library(palmerpenguins)

# Define path to output file
output_tsv <- here::here("results", "penguins_adelie.tsv")

# Create data frame of only Adelie penguins
penguins_adelie <- penguins |>
  dplyr::filter(species == "Adelie")

# Export to TSV
readr::write_tsv(penguins_adelie, output_tsv)
