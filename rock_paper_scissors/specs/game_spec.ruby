require 'minitest/autorun'
require ('Minitest/rg')
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new('rock', 'paper')
    @game2 = Game.new('rock', 'scissors')
    @game3 = Game.new('scissors', 'paper')
  end

  def test_paper_beats_rock
    assert_equal('paper', @game1.who_wins?())
  end

  def test_rock_beats_scissors
    assert_equal('rock', @game2.who_wins?())
  end

  def test_scissors_beat_paper
    assert_equal('scissors', @game3.who_wins?())
  end 

end
