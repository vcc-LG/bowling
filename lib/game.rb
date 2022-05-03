# frozen_string_literal: true

class Game
  def initialize
    @score = 0
  end

  def roll(pins)
    @score += pins
  end

  attr_reader :score
end
