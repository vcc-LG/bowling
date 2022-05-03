# frozen_string_literal: true

class Game
  def initialize
    @score = 0
    @frames = []
  end

  def roll(pins)
    current_frame = Frame.new(score: pins)
    @frames << current_frame
  end

  def score
    @frames.map(&:score).sum
  end
end

class Frame
  def initialize(score:)
    @score = score
  end

  def is_strike?; end

  def is_spare?; end

  def is_complete?; end

  attr_reader :score
end
