test_that("Check if plot is returned", {
  plot <- plot_h_density(load_hw_data("C:/Users/tonib/Desktop/MyBigFatPackage/weight-height.csv"))
  setequal(class(plot), c("gg", "ggplot"))
})
