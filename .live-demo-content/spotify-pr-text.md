Closes <issue number>

In this PR, I'm adding UMAP visualization to the Spotify notebook. 
I used the `umap` package to calculate UMAP coordinates from the PCs.

I've included two plots where songs are colored by `instrumentalness` and `mode` variables and used the `patchwork` package to combine these panels.
