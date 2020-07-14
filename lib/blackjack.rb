def welcome
  puts "Welcome to the Blackjack Table"
end


def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input(input) 
  input = gets 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round()
  
  deal_card
  display_card_total
  puts sum 
  return sum 
  deal_card
  display_card_total
end

def hit?(number)
  
  prompt_user
  get_user_input
  if "s" 
    return number
    elsif "h"  
    deal_card
    return number
  else 
    invalid_command
    prompt_user
end

def invalid_command
  puts "Please enter a valid command" 
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
