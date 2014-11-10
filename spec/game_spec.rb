require 'spec_helper'

describe Game do
    # Don't mind all this crazy setup, testing command line apps is hard!
  let(:io_input)  { StringIO.new("") }
  let(:io_output) { StringIO.new("") }

  let(:app) { Game.new(io_input, io_output) }
  let(:output) { io_output.string }
end
