class Game
  attr_accessor :input, :output, :choices, :choice

  def initialize (input, output)
    @input = input
    @output = output
    @choices = ["rock", "paper", "scissors"]
    @choice = choice
  end

  def run
    puts """
    Welcome to the game
    """
    quit = false

    unless quit
      puts "still playing"
      get_choices_user
      get_choices_computer
      # winner = determine_winner(choice, computer_choice)
      # puts "...and the winner is #{winner}"
      #find_winner
      #quit_the_game?
    end

    def quit_the_game?
      puts "Do you want to play again?"
      response = gets.chomp
      if response
        quit = false
      else
        quit = true
      end
    end

  end

  def get_choices_user
    puts "What sign would you like to throw?"
    puts "Your choices are paper, rock, scissors "
    choice = gets.chomp
    unless @choices.include?(choice)
      puts "sorry only paper, rock, scissors if you wanna play"
      choice = gets.chomp
    end
    choice
  end

  def get_choices_computer
    computer_choice = choices.sample
    puts "You chose #{choice}"
    puts "Your opponent chose #{computer_choice} "
  end

  def determine_winner(choice, computer_choice)
    if choice == computer_choice
      puts "you tied"
    elsif choice == winning_choice(computer_choice)
      choice
    else
      computer_choice
    end
  end

  def winning_choice(choice)
    #games = determine winning choice
  end


end
