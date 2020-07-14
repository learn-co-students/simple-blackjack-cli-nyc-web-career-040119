def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(num)
 puts "Your cards add up to #{num}"
 num
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  return gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  deal_card 
  deal_card
  card_total= deal_card + deal_card
  display_card_total(card_total)
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's' 
    card_total
  elsif input == 'h'
  deal_card + card_total
  else 
  invalid_command
  # code hit? here
end
end

def invalid_command
  "Please enter a valid command"
  prompt_user
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards = initial_round
  until cards > 21 do 
  hit?(cards)
  cards += deal_card
  display_card_total(cards)
end
end_game(cards)
  # code runner here
end
    
