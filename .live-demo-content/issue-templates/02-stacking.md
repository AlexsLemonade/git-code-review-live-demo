We'd like to expand the `palmerpenguins::penguins` linear regression analysis to also visualize the relationship between variables with a scatterplot.

We should first create a general function in `utils.R` that makes a scatterplot using `ggplot2`, including the regression line, and exports the plot to a given file.
This function should then be used to create and export the plot to the `plots/` directory.