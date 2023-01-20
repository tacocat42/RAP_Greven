# RAP_Greven
Statec Project RAP

This is a reproducible pipeline containing a R package and a csv dataset. This dataset has height-weight-sex data and the package is composed of three functions.
The first function loads the data, while the others respectively plot the difference in height and weight densities between genders. This piepline uses "renv" and "target".

In order to run the pipeline, clone the repository, then run renv::restore() and finally targets::tar_make().

To visualize the plots, use targets::tar_read(height_plot) and targets::tar_read(weight_plot).
