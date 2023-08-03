### Regression function without documentation ###
run_tidy_regression <- function(df, x_var, y_var) {

  # build model formula from input strings
  model_formula <- as.formula(
    glue::glue("{y_var} ~ {x_var}")
  )

  # perform regression using formula
  model_fit <- lm(model_formula, data = df)

  # tidy the output
  tidy_model_fit <- broom::tidy(model_fit)

  # return tidy output
  return(tidy_model_fit)
}

# tested:
# run_tidy_regression(penguins, "body_mass_g", "bill_depth_mm")




### scatterplot function with documentation ###

#' Plot scatterplot associated with a regression model
#'
#' @param df Data frame containing variables to plot
#' @param x_var The predictor variable plainly written (not a string)
#' @param y_var The predictor variable plainly written (not a string)
#' @param filename Filename to export figure to
#'
#' @examples
#'  plot_regression_scatterplot(iris, Sepal.Length, Sepal.Width, "sepal_model.png")
#'
#' @return Returns plot object, while also exporting to file
plot_regression_scatterplot <- function(df,
                                        x_var,
                                        y_var,
                                        filename) {

  # Create basic scatterplot
  scatterplot <- ggplot(df) +
    aes(x = {{x_var}}, y = {{y_var}}) +
    geom_point() +
    # Add trendline
    geom_smooth(method = "lm")

  # Export to file at default size
  ggsave(filename, scatterplot)

  # Return plot object
  return(scatterplot)
}

# the above was tested successfully with its docs example
