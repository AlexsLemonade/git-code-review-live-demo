We'd like to build a linear regression to explore the relationship between `palmerpenguins::penguins` variables `flipper_length_mm` (predictor) and `body_mass_g` (response).

To do this, we should first create a general function in a `utils.R` script to fit a linear regression and return a tidy data frame produced by `broom::tidy()`. Then, in a separate script, we should source the `utils.R` script, build the model, and export the results as a TSV in the `results/` directory.