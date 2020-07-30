```{r}
# Source: http://www.htmlwidgets.org/showcase_plotly.html
library(plotly)
p <- ggplot(data = diamonds, aes(x = cut, fill = clarity)) +
            geom_bar(position = "dodge")
ggplotly(p)
```

<!-- 
```{r}
library(shiny)
shiny::runGitHub('mailsonsantos2020.github.io', 'mailsonsantos2020')
```
-->