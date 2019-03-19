def welcome
    puts "Welcome to the Blackjack Table"
  end
  
  def deal_card
    rand(1..11)
  end
  
  def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
  end
  
  def prompt_user
    puts "Type 'h' to hit or 's' to stay"
  end
  
  def get_user_input
    gets.chomp
  end
  
  def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
  
  def initial_round
   card_total = 0 
   card_total += deal_card
   card_total += deal_card 
   display_card_total(card_total)
     card_total
  end
  
  def hit?(card_total)
      prompt_user
      input = get_user_input
      if input == "s"
        hit?(card_total)
      elsif input == "h"
        card_total += deal_card
      else invalid_command
        hit?(card_total)
      end 
        card_total
  end
  
  def invalid_command
    puts "please enter a valid command"
  end
  
  #####################################################
  # get every test to pass before coding runner below #
  #####################################################
  
  def runner
    welcome
    total = initial_round
    until total > 21
    hit?(total)
     total += deal_card
     display_card_total(total)
    end 
  end_game(total)
  end
    
runner