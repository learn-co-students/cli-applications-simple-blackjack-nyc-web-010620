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
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  press_valid_key = prompt_user
  user_input = get_user_input
  iteration = true

  while iteration
    if user_input == "h"
      card_total += deal_card
      iteration = false
    elsif user_input == "s"
      iteration = false
    else
      invalid_command
      prompt_user
      user_input = get_user_input
    end
  end

  card_total
end

def invalid_command
  puts 'Please enter a valid command'
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round # first round cards dealt
  until card_total > 21      # play until the card_total total is less then 21 and do hit
    card_total = hit?(card_total) # 1: - each loop of the until is a round if its h you add to the card_total if its s you dont add and display the same value
    display_card_total(card_total)  # after each hit display the card total
  end

  end_game(card_total)
end

# 1: I noticed in another problem that when you area already adding a varible
#    that was defined localy you dont need to do card_total += hit?(card_total)
#    because you are aleady adding in the method the variable you will just be
#    reassigning the sum to the variable

# This lab was more less descriptive
