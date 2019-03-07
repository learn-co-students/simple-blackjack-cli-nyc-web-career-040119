def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times do
    total += deal_card
  end
  display_card_total(total)
  total
end

def compare_hands(your_hand, dealer_hand)
  if your_hand > dealer_hand
    puts "Dealer's total was #{dealer_hand}, you win!"
  else
    puts "Dealer's total was #{dealer_hand}, you lose..."
  end
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "s"
    compare_hands(total, rand(1..11) + rand(1..11))
    total = 9999
  elsif input == "h"
    total += deal_card
    display_card_total(total)
    total
  else
    invalid_command
    hit?(total)
  end
end

def invalid_command
  puts "Please enter a valid command"
  # prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total <= 21
    total = hit?(total)
  end
  if total > 21 && total != 9999
    end_game(total)
  end
end