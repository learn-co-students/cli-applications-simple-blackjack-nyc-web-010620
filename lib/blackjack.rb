require 'pry'


def welcome
  puts "Welcome to the Blackjack Table"
  # binding.pry
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
# binding.pry
  until user_input == 's' || user_input == 'h' do
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input.downcase == 's'
    card_total

  elsif user_input.downcase == 'h'
    card_total += deal_card
end
  # binding.pry
  card_total
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
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
  end_game(card_total)
end
