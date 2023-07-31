Currently, the script `scripts/plot_penguins_histogram.R` creates a histogram of penguin bill depth, using the default number of histogram bins.

This script should be expanded to take a command line argument, using the `optparse` package, for the number of bins to use in the plot.
Then, a PNG-formatted figure of a histogram with _40_ bins should be generated from this script and exported to the `plots/` directory. To enable this export, the script will also need a `ggsave()` line, and the exported figure filename should clearly indicate the number of bins used.