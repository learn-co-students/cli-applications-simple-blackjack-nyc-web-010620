require "pry"

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
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  return card_total
end

def hit?(number)
  prompt_user
  input = get_user_input
  # return number
  if input == "s"
    return number
  elsif input == "h"
    new_card = deal_card
    new_card
    display_card_total(number + new_card)
    return (number + new_card)
  else
    invalid_command
    prompt_user
    get_user_input
  # binding.pry
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
  new_total = hit?(card_total)
  if new_total > 21
    end_game(new_total)
  # binding.pry
  else
    hit?(new_total)
  end
end
    
