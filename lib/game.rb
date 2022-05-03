# frozen_string_literal: true

class Game
  def initialize
    @frames = []
  end

  def roll(pins)
    if @frames.empty? || @frames.last.is_complete?
      current_frame = Frame.new
      @frames << current_frame
    else
      current_frame = @frames.last
    end

    current_frame.roll(pins: pins)
  end

  def score
    @frames.map(&:score).sum
  end
end

class Frame
  def initialize
    @score = 0
    @roll_number = 0
  end

  def roll(pins:)
    @score += pins
    @roll_number += 1
  end

  def is_strike?; end

  def is_spare?; end

  def is_complete?
    @roll_number == 2
  end

  attr_reader :score
end
