# Pao-Ying-Choob
  print("Welcome to Pao Ying Choob game")
  username <- readline("What is your name: ")
  print("choose 1 of these: rock, paper or scissors")
  print("and if you want to quit the game pls type 'quit'")

  hands <- c("rock", "paper", "scissors")
  print("Let's play the game in 3 2 1!")


  count_user_win <- 0
  count_user_lose  <- 0
  count_user_tie <- 0


  while (TRUE) {
    flush.console()
    user_hand <- readline("shoot: ")
    com_hand <- sample(hands, 1)
  if (tolower(user_hand) == "rock" & com_hand == "scissors" |
      tolower(user_hand) == "paper" & com_hand == "rock"|
      tolower(user_hand) == "scissors" & com_hand == "paper") {
      count_user_win = count_user_win + 1
      print(paste("Computer:", com_hand))
      print(paste(username,":", user_hand))
      print(paste(username, "is win"))

  }else if (user_hand == com_hand){
      count_user_tie = count_user_tie + 1
      print(paste("Computer:", com_hand))
      print(paste(username,":", user_hand))
      print("tie!")

  }else if (tolower(user_hand) == "rock" & com_hand == "paper" |
            tolower(user_hand) == "paper" & com_hand == "scissors"|
            tolower(user_hand) == "scissors" & com_hand == "rock") {
      count_user_lose = count_user_lose + 1
      print(paste("Computer:", com_hand))
      print(paste(username,":", user_hand))
      print(paste(username, "is lose"))

  }else if (tolower(user_hand) == "quit") {
      print(paste("win: ",count_user_win))
      print(paste("lose: ",count_user_lose))
      print(paste("tie: ",count_user_tie))
      print(paste("See you later!", username))
      break
  }

  }

}


game()
