def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 { display_card_total(7) }.to_not raise_error
end

def display_card_total
  puts "card total"
end

def prompt_user
  puts "user"
end

def get_user_input
  puts "get user imput"
end

def end_game
  puts "end game"
end

def initial_round
  puts "round intial"
end

def hit?
  puts "hit?"
end

def invalid_command
  puts "invalid command"
end
