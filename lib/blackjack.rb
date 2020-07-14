def welcome
phrase = "Welcome to the Blackjack Table" 
puts "#{phrase}"
print "#{phrase}"
end

def deal_card
  number = rand(1..11)
  return number
end

def display_card_total(card_total)
phrase = "Your cards add up to #{card_total}"
puts "#{phrase}"
end

def prompt_user
  phrase = "Type 'h' to hit or 's' to stay"
  puts "#{phrase}"
  print "#{phrase}"
end

def get_user_input
  gets.chomp.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_roundend

def hit?(card_total)
 prompt_user
  input = get_user_input
  until input == 'h' || input == 's'
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    card_total
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
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)end
    

