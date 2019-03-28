def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
  return number
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(limit)
  puts "Sorry, you hit #{limit}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times do
    total += deal_card
  end
  display_card_total(total)
end

def hit?(current_total)
  new_card_total = current_total
  prompt_user
  answer = get_user_input
    if answer == 'h' 
      new_card_total += deal_card
    else answer != 's' && answer != 'h'
      invalid_command
    end
  return new_card_total
end

def invalid_command
  return "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  number = initial_round
  result = hit?(number)
    until result > 21
      display_card_total(result)
      result = hit?(result)
    end
  display_card_total(result)
  end_game(result)
end