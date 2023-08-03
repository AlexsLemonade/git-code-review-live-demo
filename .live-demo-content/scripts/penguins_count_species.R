library(palmerpenguins)

# Define path to output file
output_tsv <- here::here("results", "penguins_species_counts.tsv")

# Create data frame of penguin counts
penguin_counts <- penguins |>
  # use informative count column name
  dplyr::count(species, name = "count")

# Export to TSV
readr::write_tsv(penguin_counts, output_tsv)
