def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(ct)
  puts "Your cards add up to #{ct}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(ct)
  if ct > 21
    puts "Sorry, you hit #{ct}. Thanks for playing!"
  end
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
  return x
end

def hit?(x)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    x += deal_card
  elsif user_input == "s"
    x
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sleep(0.75)
  ct = initial_round
  until ct > 21
    ct = hit?(ct)
    display_card_total(ct)
  end
  end_game(ct)
end
    
