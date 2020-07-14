require_relative "blackjack.rb"
welcome
total = initial_round
until total > 21
  total = hit?(total)
  display_card_total(total)
end
end_game(total)
runner
