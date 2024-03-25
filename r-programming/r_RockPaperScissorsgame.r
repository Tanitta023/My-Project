# The player can choose rock (R), scissors (S), or paper (P)
# The computer will randomly choose a move
# The game will keep track of the player's wins, losses, and ties

# defind variable
move <- c("R", "S", "P")
wins <- 0
looses <- 0
ties <- 0


RSPgame <- function() {
  # start game
  while(TRUE) {
    cat("Enter your move rock (R), scissors (S), or paper (P): ") 
    player <- toupper(readLines("stdin", n = 1))
    # check player input
    if (player == "QUIT") {
      cat("Thanks for playing! GGEZ! \n")
      break
    }
    
    # get computer's move
    computer <- sample(move, 1)

    if (player == computer) {
      print("it's tie!")
      ties <- ties + 1
    } else if (player == "R" & computer == "S" |
             player == "S" & computer == "P" |
             player == "P" & computer == "R" ) {
      print("You win!")
      wins = wins + 1
    } else if (player == "S" & computer == "R" |
               player == "P" & computer == "S" |
               player == "R" & computer == "p") {
      print("you lose")
      looses = looses + 1
    } else {
      print("invalid input")
    }
  }
  cat(paste("wins:", wins, "looses:", looses, "ties:", ties))

}
    
  
           
  

RSPgame()

