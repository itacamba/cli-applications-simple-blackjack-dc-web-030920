require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  sum += deal_card
  sum += deal_card
  display_card_total(sum)
  sum
end

def hit?(number)
  total = 0
	loop do
		prompt_user
		input = get_user_input
		if input != 's' && input != 'h'
			invalid_command
		elsif input == 'h'
			total = number + deal_card
			break
		elsif input == 's'
			total = number
			break
		end
	end
  total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
	welcome
	total = initial_round
	while total < 21
	total = hit?(total)
	display_card_total(total)
	end
	end_game(total)
end
