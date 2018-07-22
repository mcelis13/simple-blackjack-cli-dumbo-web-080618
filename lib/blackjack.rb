def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  return Random.new.rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  firstCard = deal_card()
  secondCard = deal_card()
  card_total = firstCard + secondCard
  display_card_total(card_total)
end

def hit? (card_total)
  prompt_user()
  input = get_user_input()
  if input == 'h'
    card_total += deal_card()
  elsif input != 's' && input != 'h'
    invalid_command()
    prompt_user()
  end
    return card_total
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardSum = initial_round
  prompt_user
  loop do
    hit?
    display_card_total
    break if display_card_total > 21
  end
  end_game
end
