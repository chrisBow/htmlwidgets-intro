#--- create xts object ----

# create vector of dates

dates <- seq(as.Date("2000-01-01"), length = 180, by = "months")

# create sample data: 'sales'

sales <- rnorm(180, 1000, 20)

# create xts object

library(xts)
sales_xts <- xts(sales, order.by = dates)

#---- plot with dygraph ----

library(dygraphs)

dygraph(sales_xts, main = "Normal-looking Sales") %>% 
  dyRangeSelector(dateWindow = c("2000-01-01", "2014-12-01"))

