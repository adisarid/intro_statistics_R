# This script illustrates z-score.
## Example:
# plot_z_score(1, "two.sided")
# plot_z_score(0.05, "one.sided")
plot_z_score <- function(p = NULL, 
                         alternative = c("two.sided", "one.sided"),
                         z_dense = tibble(z_range = seq(-3, 3, by = 0.05),
                                          density = dnorm(z_range),
                                          p_range = pnorm(z_range))){
  
  # prep the plot
  base_plot <- ggplot(z_dense, aes(x = z_range, y = density)) + 
    geom_line()
  
  subtitle_str <- ""
  
  
  
  # split to two sided/one sided alternative
  if (alternative[1] == "two.sided"){
    z_of_p <- qnorm(p/2)
    div_factor <- 0.5
  } else {
    z_of_p <- qnorm(p)
    div_factor <- 1
  }
  
  density_of_p <- dnorm(z_of_p)
  
  base_plot <- base_plot + 
    geom_area(data = z_dense %>% filter(p_range <= p*div_factor),
              aes(x = z_range, y = density), fill = "lightblue", alpha = 0.5) +
    geom_segment(x = -3, xend = z_of_p,
                 y = density_of_p, yend = density_of_p, color = "red") +
    geom_segment(x = z_of_p, xend = z_of_p, y = density_of_p, yend = 0, color = "red")
  
  if (alternative[1] == "two.sided"){
    base_plot <- base_plot + 
      geom_area(data = z_dense %>% filter(p_range >= 1 - p*div_factor),
                aes(x = z_range, y = density), fill = "lightblue", alpha = 0.5) +
      geom_segment(x = 3, xend = -z_of_p,
                   y = density_of_p, yend = density_of_p, color = "red") +
      geom_segment(x = -z_of_p, xend = -z_of_p, y = density_of_p, yend = 0, color = "red")
    
  }
  
  subtitle_str <- paste0(subtitle_str, "p = Phi(z) = pnorm(z) = ", round(p*div_factor, 3), 
                         "; z = qnorm(p) = ", 
                         round(z_of_p, 3))
  
  
  base_plot + 
    xlab("z_p") + 
    ylab("density\ndnorm(z_p)") + 
    theme_bw() + 
    ggtitle("The normal distribution",
            subtitle = subtitle_str)
  
}
