def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11) # dice.roll.rb
end

def display_card_total(int)
  puts "Your cards add up to #{int}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(int)
  puts "Sorry, you hit #{int}. Thanks for playing!"
end

def initial_round
  cards = deal_card + deal_card
  display_card_total(cards)
  cards
end

def hit?(int)
  prompt_user
  case get_user_input # case
  when "s"
    int
  when "h"
    int += deal_card
  else
    nil
  end
end

def invalid_command
  nil
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round # this is the same thing as counter = 0, total = counter, and initial_round = 0, it is just the starting point
  until total > 21
    total = hit?(total) #this does the same thing as counter += it is just having the user manually do it. It is incremented all the same.
  display_card_total(total) # this is just another prompt to let the user know where they are in the count. It passes the value stored in total into the string.
end
end_game(total) # this is doing the same thing as display_card(total). It is passing the value stored in total into the string to let the user know they lost, and what the sum of their cards are.
end
