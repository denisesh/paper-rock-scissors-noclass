class Game
  attr_accessor :input, :output, :choices

  def initialize (input, output)
    @input = input
    @output = output
    @choices = ["rock", "paper", "scissors"]
  end

  def run
    puts """
    Welcome to the game
    """
    quit = false
    p quit
    unless quit
      puts "still playing"
      get_choices_user
      get_choices_computer
      determine_winner(@choice, @computer_choice)
      quit_game
    end
  end

  def get_choices_user
    puts "What sign would you like to throw?"
    puts "Your choices are paper, rock, scissors "
    @choice = gets.chomp
    unless @choices.include?(@choice)
      puts "sorry only paper, rock, scissors if you wanna play"
      @choice = gets.chomp
    end
    @choice
  end

  def get_choices_computer
    @computer_choice = choices.sample
    puts "You chose #{@choice}"
    puts "Your opponent chose #{@computer_choice} "
  end

  def determine_winner(choice, computer_choice)
    convert = {"rock"=> 0, "paper"=> 1,"scissors"=> 2,}
    winner = (3 + convert[choice] - convert[computer_choice]) % 3
      if winner == 1
        puts "you beat the computer!"
      elsif winner == 2
        puts "dang, you lost..."
      else
        puts "Its a tie!"
      end
  end

  def quit_game
    puts "Do you want to play again?"
    response = gets.chomp
    if response
      quit = false
    else
      quit = true
    end
  end

end
