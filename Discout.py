# code to calculate the discout

def calculate_discount(price, discount_percent):
    price = float(price)
    discount_percent = float(discount_percent)
    discount = (price * discount_percent) / 100
    total = price - discount
    if discount >= 20:
        return f"Discount => 20% : Total = {total}"
    
    else:
        return f"Discount < 20%: Total = {price}"
price = input("Enter the price: ")
discount_percent = input("Enter your Discount: ")
print(calculate_discount(price, discount_percent))