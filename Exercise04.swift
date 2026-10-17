// Exercise 04 - Closures, map, filter, and reduce

let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

let pricesAbove100 = prices.filter { $0 > 100 }

let increasedPrices = prices.map { $0 + 10 }

let total = prices.reduce(0) { $0 + $1 }

print("Prices above 100: \(pricesAbove100)")
print("Increased Prices: \(increasedPrices)")
print("Total: \(total)")