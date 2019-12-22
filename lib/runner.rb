require_relative "blackjack.rb"
expect($stdout).to 
receive (:puts).with("Type 'h' to hit or 's' to stay")

expect(self).to
receive(:get_user_input).and_return("s")
runner