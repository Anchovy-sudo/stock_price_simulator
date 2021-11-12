stock_prices <- data.frame(day = c(1:200), price = c(10, rep(NA, 199)))
for (i in c(2:200)) {
  if (stock_prices[[2]][i-1] > 0) {
    stock_prices[[2]][i] = stock_prices[[2]][i-1] + rnorm(1)
  } else if (stock_prices[[2]][i-1] <= 0) {
    stock_prices[[2]][i] = 0 
    stock_prices[[2]][i-1] = 0
  }
}
