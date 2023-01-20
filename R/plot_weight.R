#' Easily filter unemployment data for Luxembourg
#' @param data A tibble containing sex-height-weight data.
#' @import ggplot2
#' @importFrom plyr ddply
#' @export
#' @return A ggplot
#' @details
#' This function allows the user to create density plot of the weight depending on sex.
#' Moreover, it takes displays the mean weight of each sex as a dashed line.


plot_w_density <- function(data) {
  mu_weight <- ddply(data, "Gender", summarise, grp.mean=mean(Weight))
  ggplot(data, aes(x=Weight, fill=Gender))+
    geom_density(alpha=0.4)+
    geom_vline(data=mu_weight, aes(xintercept=grp.mean, color=Gender),
               linetype="dashed")

}
