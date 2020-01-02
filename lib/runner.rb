require_relative "blackjack.rb"

runner

describe "#get_user_input" do
   it "returns the value of a `gets.chomp` method" do
     ["h", "s", "exit"].each do |string|
       expect(self).to receive(:gets).and_return(string)
       expect(get_user_input).to eq(string)
     end
   end
 end

 describe "#end_game" do
   it "prints apology, card total, and thank you message" do
     expect($stdout).to receive(:puts).with("Sorry, you hit 27. Thanks for playing!")
     end_game(27)
   end
 end


describe "#end_game" do
   it "prints apology, card total, and thank you message" do
     expect($stdout).to receive(:puts).with("Sorry, you hit 27. Thanks for playing!")
     end_game(27)
   end
 end

 describe "#get_user_input" do
   it "returns the value of a `gets.chomp` method" do
     ["h", "s", "exit"].each do |string|
       expect(self).to receive(:gets).and_return(string)
       expect(get_user_input).to eq(string)
     end
   end
 end