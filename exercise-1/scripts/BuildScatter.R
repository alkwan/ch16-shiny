# Function to build a scatterplot

# Write a function that returns a scatterplot, parameterizing the following variables:
#   - Data to use
#   - Variable for the x axis
#   - Variable for the y axis
#   - Variable for the color
#   - Title of the plot (set a default of "Title")
#   - Label for the x axis (set a default of "X Title")
#   - Label for the y axis (set a default of "Y Title")

MakeScatterPlot <- function(new.data, new.x, new.y, new.color, new.title, label.x, label.y) {
  library(ggplot2)
  if (length(new.title) < 1) {
    title <- 'Title'
  }
  return(ggplot(data = new.data) +
    geom_point(mapping = aes(x = new.x, y = new.y), color = new.color) +
    labs(title = title,
         x = label.x,
         y = label.y))
}