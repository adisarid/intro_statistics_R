library(tidyverse)

# This script illustrates z-score.

plot_z_score <- function(z = NULL, p = NULL, use_function = dnorm){
  
  if (!is.null(z) & !is.null(p)){
    stop("Can't have both z and p...")
  }
  
  z_dense <- tibble(z_range = seq(-3, 3, by = 0.05),
                    density = dnorm(z_range),
                    p_range = pnorm(z_range))
  
  base_plot <- ggplot(z_dense, aes(x = z_range, y = density)) + 
    geom_line()
  
  subtitle_str <- ""
  
  if (!is.null(z)){
    base_plot <- base_plot + geom_vline(aes(xintercept = z), color = "red")
    subtitle_str <- paste0("z_p=", z)
  } 
  
  if (!is.null(p)){
    
    z_of_p <- qnorm(p)
    density_of_p <- dnorm(z_of_p)
    
    base_plot <- base_plot + 
      geom_area(data = z_dense %>% filter(p_range <= p),
                aes(x = z_range, y = density), fill = "lightblue", alpha = 0.3) +
      geom_segment(x = -3, xend = z_of_p,
                   y = density_of_p, yend = density_of_p, color = "red") +
      geom_segment(x = z_of_p, xend = z_of_p, y = density_of_p, yend = 0, color = "red")
    
    subtitle_str <- paste0(subtitle_str, "p = Phi(z) = pnorm(z) = ", p, 
                           "\nz = qnorm(p) = ", 
                           round(z_of_p, 2), 
                           "\nf(z) = dnorm(z) = ", 
                           round(density_of_p, 2))
    
  }
  
  base_plot + 
    xlab("z_p") + 
    ylab("density\ndnorm(z_p)") + 
    theme_bw() + 
    ggtitle("The normal distribution",
            subtitle = subtitle_str)
  
}
