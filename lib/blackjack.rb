def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round()
  card_total = deal_card + deal_card 
  display_card_total(card_total)
  return card_total
  
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == "h"
    num = deal_card + num
  end 
  return num
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21
    hit?(total)
    total += deal_card
    display_card_total(total)
  end
  end_game(total)
end
    
