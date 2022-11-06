# homework 01 
# chatbot (rule-based)
# ordering pizza

print("Welcome to our restaurant!")

# question 01 - name
print("Hi There! What's your name?")
user_name <- readLines("stdin", n=1)
print(paste("Hi", user_name,"!"))

# question 02 - order pizza
print("We have 5 pizza types available.")

pizza_id <- c(1,2,3,4,5)
pizza_type <- c("Hawaiian", "Bacon", "Chicken and Pineapple", "Double Pepperoni", "Veggie")
table_pizza <- data.frame(pizza_id, pizza_type)

print(table_pizza)
print("What would you like to order today? :)")

ans2_pizza <- as.numeric(readLines("stdin", n=1))
cust_pizza <- pizza_type[ans2_pizza] # to consolidate1

# question 03 - order size
print("What size do you prefer?")

size_id <- c(1,2,3)
size_type <- c("Small", "Regular", "Large")
table_size <- data.frame(size_id, size_type)

print(table_size)

ans3_size <- as.numeric(readLines("stdin", n=1))
cust_size <- size_type[ans3_size] # to consolidate2

# question 04 - order topping
toppings_id <- c(1,2,3,4)
toppings <- c("Mushroom", "Cheese", "Tomato", "Smoked bacon")
table_toppings <- data.frame(toppings_id, toppings)

print("Would you like to add some toppings?")
print("Yes/No")
ans4_toppings <- readLines("stdin", n=1)

if (ans4_toppings == "Yes") {
  print("We have 4 toppings available.")
  print(table_toppings)
  print("Which one do you prefer?")
  ans4_choose_toppings <- as.numeric(readLines("stdin", n=1))
  cust_toppings <- paste("Add",toppings[ans4_choose_toppings]) # to consolidate3
} else {
  print("Got it. No topping is added.")
  no_toppings <- "No topping is added"
}

# question 05 - order drink
drink_id <- c(1,2,3)
drink <- c("Lemonade", "Soda", "Iced Tea")
table_drink <- data.frame(drink_id, drink)

print("Would you like a drink?")
print("Yes/No")
ans5_drink <- readLines("stdin", n=1)

if (ans5_drink == "Yes") {
  print(table_drink)
  print("Which one do you prefer?")
  ans5_choose_drink <- as.numeric(readLines("stdin", n=1))
  cust_drink <- paste("Serve with", drink[ans5_choose_drink]) # to consolidate4
} else {
  print("Okie dokie, no drink!")
  no_drink <- "Drink is not added."
}

# question 06 - payment
print("Do you prefer to pay by Cash or Card?")
ans6_payment <- readLines("stdin", n=1)

print(paste("Got it, you prefer to pay by", ans6_payment))

cust_payment <- ans6_payment

# summarize order
print("Let's see how your order goes!")

print(paste("Your order is", cust_pizza, ",", cust_size, "Size",",",
        if (ans4_toppings == "Yes") {
            cust_toppings
        }   else {no_toppings},",",
        if (ans5_drink == "Yes") {
            cust_drink
        }   else {no_drink}
           ))

# question 07 - delivery or pickup service
service_id <- c(1,2)
service <- c("Delivery", "Pickup")
table_service <- data.frame(service_id, service)

print("Please select your order service.")
print(table_service)

ans7_service <- as.numeric(readLines("stdin", n=1))
cust_service <- service[ans7_service] 

if (ans7_service == 1) {
  print("Please provide us with your contact number.")
  ans7_phonenum <- as.numeric(readLines("stdin", n=1))
  print(paste("Your contact number is", ans7_phonenum,"."))
  print(paste("Please keep your phone available as our deliveryman will be contacting you via", ans7_phonenum, "when arriving."))
} else {
  print(paste("Your order can be ready in 30 minutes. Please contact our reception if your order is over than the expected time."))
}

print(paste("Enjoy your meal,", user_name, "! :)"))