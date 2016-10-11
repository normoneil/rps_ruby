# Rock, Paper, Scissors
puts "Welcome to Rock, Paper, Scissors!"
puts "Please type in  the word \"exit\" to exit the game at any time."
puts ""

user_input = ""
user_score = 0
total_games = 0

while user_input != "exit"
  print "Please enter your move: "
  user_input = gets.chomp

  pc_options = ["Rock", "Paper", "Scissors"]
  pc_input = pc_options[rand(3)]

  puts "Your move was #{user_input}, my move was #{pc_input}."
  if user_input == pc_input
    game_result = "Tied!  No score"
  elsif user_input == "Rock" && pc_input == "Scissors"
      game_result = "Win!"
      user_score = user_score + 1
      total_games = total_games + 1
  elsif user_input == "Rock" && pc_input == "Paper"
      game_result = "Lost!"
      total_games = total_games + 1
  elsif user_input == "Scissors" && pc_input == "Rock"
      game_result = "Lost!"
      total_games = total_games + 1
  elsif user_input == "Scissors" && pc_input == "Paper"
      game_result = "Win!"
      user_score = user_score + 1
      total_games = total_games + 1
  elsif user_input == "Paper" && pc_input == "Rock"
      game_result = "Win!"
      user_score = user_score + 1
      total_games = total_games + 1
  elsif user_input == "Paper" && pc_input == "Scissors"
      game_result = "Lost!"
      total_games = total_games + 1
  else
      puts "Sorry, #{user_input} is not a valid word!"
  end
  puts "You #{game_result}"
  puts "Your score is #{user_score} out of #{total_games}."
  puts ""

end
puts ""
puts "Thanks for playing!"
