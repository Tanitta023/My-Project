# The player can choose rock (R), scissors (S), or paper (P)
# The computer will randomly choose a move
# The game will keep track of the player's wins, losses, and ties
import random as rd
import time
import sys

# setting
result = {
    "win" : 0,
    "lose" : 0,
    "tie" : 0
}
move = ['R', 'P', 'S']

# get input from a user
def RSPgame():
  
  answer = []
  while True:
    
    greeting = input("Do you want to play game (y/n): ")
    if greeting.upper() == "Y":
      print("""You can choose R for Rock, P for Paper and S for scissors or Q for Quit""")
      print("Are You Ready?")
      time.sleep(1)
      while True:
        set_bot = rd.choice(move)
        answer = input("Pao yinggg chupp!! (R,P,S or Q): ")
        if ((answer.upper() == 'R') and (set_bot == 'S')) or ((answer.upper() == 'S') and (set_bot == 'P')) or ((answer.upper() == 'P') and (set_bot == 'R')):
          print("you win!")
          result["win"] = result["win"]+1
        elif ((answer.upper() == 'R') and (set_bot == 'R')) or ((answer.upper() == 'S') and (set_bot == 'S')) or ((answer.upper() == 'P') and (set_bot == 'P')):
          print("You ties!")
          result["tie"] = result["tie"]+1
        elif ((answer.upper() == 'R') and (set_bot == 'P')) or ((answer.upper() == 'S') and (set_bot == 'R')) or ((answer.upper() == 'P') and (set_bot == 'S')):
          print("You lose!")
          result["lose"] = result["lose"]+1
        elif answer.upper() == 'Q':
          print("See you again!")
          print("win:", result["win"])
          print("tie:", result["tie"])
          print("lose:", result["lose"])
          sys.exit()
        else:
          print("Try again!")





    elif greeting.upper() == "N":
      print("See you next time!")
      break
    else:
      print("try again")

RSPgame()
