# 2 players at random select rock, paper or scissors

# rock beats scissors
# scissors beats paper
# paper beats rock


# when we first run the game,
# we want to be asked for which sign we are going to throw

require 'spec_helper'

describe Game do
    # Don't mind all this crazy setup, testing command line apps is hard!
  let(:io_input)  { StringIO.new("") }
  let(:io_output) { StringIO.new("") }

  let(:app) { Game.new(io_input, io_output) }
  let(:output) { io_output.string }

  it "asks the player what sign they want to throw" do
    app.run

    expect(output).to include("What sign would you like to throw?")
  end

  xit "reports what the user threw" do
    simulate_user_input('rock')
    app.run

    expect(output).to include("You chose: rock")
  end

  # get the sign they throw
  # check if its one of rock paper or scissors
  xit "checks if input is rock paper or scissors" do
    simulate_user_input('monkey')
    app.run

    expect(output).to include("not a valid throw!")
    expect(output).not_to include("You chose: monkey")
  end
end
