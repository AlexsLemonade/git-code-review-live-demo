Currently, the script [`plot_penguins_histogram.R`](scripts/plot_penguins_histogram.R) creates a histogram of penguin bill depth, using the default number of histogram bins.

This script should be expanded to take a command line argument, using the `optparse` package, for the number of bins to use in the plot.
Then, a PNG histogram with 40 bins should be generated from this script figure should be exported to the `plots/` directory. To enable this export, the script will also require adding a `ggsave()` line, such that the outputted figure name clearly indicates the number of bins used.