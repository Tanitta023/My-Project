import sys
import time

class ATM:
    def __init__(self, namebank, atm_id, pin, name, cash_balance): 
        self.namebank = namebank
        self.atm_id = atm_id
        self.pin = pin
        self.name = name
        self.cash_balance = cash_balance
    
    def withdraw (self, atm_id):
        user_pin = input("Enter your pin:" )
        if user_pin == self.pin:
                while True:
                    print("how much do you want to withdarw?")
                    user_withdraw = input("100, 200, 500, 1000 : ")
                    if (int(user_withdraw)== 100) or (int(user_withdraw) == 200) or (int(user_withdraw) == 500) or (int(user_withdraw) == 1000):
                        self.cash_balance = self.cash_balance - int(user_withdraw)
                        if self.cash_balance >= 0:
                            print("Successful withdraw! Have a nice day!")
                            print(f"your total balance is {self.cash_balance}")
                            sys.exit()

                        else:
                            print("Can not withdraw! check your cash balance")
                            self.cash_balance = self.cash_balance + int(user_withdraw)
                            sys.exit()
                    else: 
                        print("\nTry again with 100, 200, 500, 1000\n")
                        time.sleep(1)
        else:
            print("Wrong Pin! Try again!")
            
    def deposit (self, atm_id):
        user_pin = input("Enter your pin:" )
        if user_pin == self.pin:
                print("how much do you want to deposit?")
                user_deposit= input("enter money : ")
                self.cash_balance = self.cash_balance + int(user_deposit)

                print("Successful deposit! Have a nice day!")
                print(f"your total balance is {self.cash_balance}")
                           
        else:
            print("Wrong Pin! Try again!") 
                   
    def tranfer (self, atm_id): 
        user_pin = input("Enter your pin:" )
        if user_pin == self.pin:
            while True :
                print("What bank do you want to transfer: ")
                user_tranfer_bank = input("enter name bank (scb, ttb, ktb):")
                if ((user_tranfer_bank).lower() == 'scb') or ((user_tranfer_bank).lower() == 'ttb') or ((user_tranfer_bank).lower() == 'scb'):  
                
                    print("how much do you want to tranfer?")
                    user_tranfer= input("enter money : ")
                    self.cash_balance = self.cash_balance - int(user_tranfer)
                    if self.cash_balance >= 0:
                        print("Successful tranfer! Have a nice day!")
                        print(f"Tranfering from {self.namebank} to {user_tranfer_bank}")
                        print(f"your total balance is {self.cash_balance}")
                        sys.exit()

                    else:
                        print("Can not tranfer! check your cash balance")
                        self.cash_balance = self.cash_balance + int(user_tranfer)
                        sys.exit()    
                else: 
                    print("\nTry again with scb, ttb, ktb\n")
                    time.sleep(1)
                 
                           
        else:
            print("Wrong Pin! Try again!")  


per1 = ATM("scb", "123", "456", "shi", 400)

per1.tranfer("123")  

