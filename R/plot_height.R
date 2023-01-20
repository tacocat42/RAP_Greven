#' Easily filter unemployment data for Luxembourg
#' @param data A tibble containing sex-height-weight data.
#' @import ggplot2
#' @importFrom plyr ddply
#' @export
#' @return A ggplot
#' @details
#' This function allows the user to create density plot of the height depending on sex.
#' Moreover, it takes displays the mean height of each sex as a dashed line.


plot_h_density <- function(data) {
  mu_height <- ddply(data, "Gender", summarise, grp.mean=mean(Height))
  ggplot(data, aes(x=Height, fill=Gender))+
    geom_density(alpha=0.4)+
    geom_vline(data=mu_height, aes(xintercept=grp.mean, color=Gender),
               linetype="dashed")

}
