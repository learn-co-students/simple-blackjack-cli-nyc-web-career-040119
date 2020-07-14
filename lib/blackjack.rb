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
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  i = deal_card + deal_card
  display_card_total(i)
  return i
end

def hit?(total)
  prompt_user
  input = get_user_input
  input == "h" ? total += deal_card : total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  play = initial_round
  until play > 21 do
    play = hit?(play)
    display_card_total(play)
  end
end_game(play)
end
