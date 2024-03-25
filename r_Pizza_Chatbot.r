# dataframe of pizza
pizza_id <- c(1,2,3,4,5)
pizza_name <- c( "Hawaiian", "Pepperoni", "Seafood", "Vegetarian", "Cheese")
pizza_price <- c(299, 299, 399, 399, 499)

pizza_menu <- data.frame(pizza_id, pizza_name, pizza_price)
pizza_menu


# dataframe of thickness
thickness_id <- c(1,2)
thickness_name <- c("Thin", "Thick")
thickness_price <- c(0, 50)

thickness_menu <- data.frame(thickness_id, thickness_name, thickness_price)
thickness_menu


# dataframe of size
size_id <- c(1,2,3,4)
size_name <- c("S", "M", "L", "XL")
size_price <- c(0, 50, 100, 150)

size_menu <- data.frame(size_id, size_name, size_price)
size_menu


# dataframe of dirnk
drink_id <- c(1,2,3,4)
drink_name <- c("Coke", "Sprite", "Fanta", "Water")
drink_price <- c(20, 20, 20, 10)

drink_menu <- data.frame(drink_id, drink_name, drink_price)
drink_menu


# create chatbox to orrder pizza
chatbox_pizza <- function() {
  print("Welcome to Pai's pizza.") 
  print ("Do you want to order pizza?")
  print ("Please type 'y' or 'n'")
  # greeting to customer
  while(TRUE) {
    input1 <- readLines("stdin", n=1)
    if (tolower(input1)=="y") {
      
      break
    } else if(tolower(input1)=="n") {
      print("Good bye! Have a nice day")
      quit()
    } 
      
      print("Please type 'y' or 'n'") 
    }
  
    
  # order pizza -- type of pizza
    print("pizza menu")
    print(pizza_menu)
    print("Please select the pizza menu id: ")
    input2 <- as.numeric(readLines("stdin", n=1))
    
    while(!input2 %in% 1:5) {
      print("Please select valid pizza menu id: ")
      input2 <- as.numeric(readLines("stdin", n=1))
    }
    
    
    order_name <- pizza_menu$pizza_name[input2]
    print(paste("We are processing your order:", order_name, "Pizza."))
    sum1 = pizza_menu$pizza_price[input2]
    print(paste("Total price:", sum1, "bath"))

   

  # order pizza -- thickness
    print("thickness")
    print(thickness_menu)
    print("Please select the thikness id:")
    input3 <- as.numeric(readLines("stdin", n=1))

    while(!input3 %in% 1:2) {
    print("Please select valid thickness id: ")
    input3 <- as.numeric(readLines("stdin", n=1))
    }

    order_thickness <- thickness_menu$thickness_name[input3]
    print(paste("We are processing your order:", order_thickness, "thickness."))
    sum2 = sum1 + thickness_menu$thickness_price[input3]
    print(paste("Total price:", sum2, "bath")) 

  # order pizza -- size
    print("size")
    print(size_menu)
    print("Please select size of pizza (S, M, L, XL):")
    input4 <- toupper(readLines("stdin", n=1))

    while(!input4 %in% c("S", "M", "L", "XL")) {
      print("Please select valid size (S, M, L, XL): ")
      input4 <- toupper(readLines("stdin", n=1))
    }

    order_size <- toupper(input4)
    print(paste("We are processing your order:", order_size, "size."))
    p1 <- match(order_size, size_menu$size_name)
    size_price <- size_menu$size_price[p1]
    sum3 = sum2 + size_price
    print(paste("Total price:", sum3, "bath"))


  # order pizza -- drink , if no drink, skip this step
  print("Do you want to order drinking?")
  print("Please type 'y' or 'n'")
  input5 <- readLines("stdin", n=1)

  while(TRUE) {
    if (tolower(input5)=="y") {
      print("drink menu")
      print(drink_menu)
      print("Please select drinking menu id:")
      input6 <- as.numeric(readLines("stdin", n=1)) 
      while(!input6 %in% 1:4) {
        print("Please select valid drinking menu id:")
        input6 <- as.numeric(readLines("stdin", n=1))
      } 
      order_drink <- drink_menu$drink_name[input6]
      drink_price <- drink_menu$drink_price[input6]
      break 
    } else if (tolower(input5)=="n") {
      order_drink <- "No"
      drink_price <- 0
      break
    } 

    
      print("Please type 'y' or 'n'")
    }
      
  print(paste("We are processing your order:", order_drink, "drinking"))

  # summarize order
  print(paste("Your order is", order_name, "Pizza,", order_thickness, "thickness,", order_size, 
              "size", "and", order_drink, "drinking"))
  sum4 = sum3 + drink_price
  print(paste("Total price:", sum4, "bath"))
  print("Thank you for your order. Please come again.")
  
  
  

    
    
  }


chatbox_pizza()
