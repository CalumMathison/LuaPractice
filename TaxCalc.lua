-- Tax Calculator
print("Item Tax Calculator")
print("Enter tax value in percent:")
taxpercent = io.read()
print ("Enter item price: ")
price = io.read()
tax = (taxpercent / 100) * price
newprice = tax + price
print("Item: ", price)
print("Tax: ", tax)
print("Subtotal: ", newprice)