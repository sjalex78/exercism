# frozen_string_literal: true

# Implementation for robot
class Robot
  DIRECTIONS = %i[
    north
    east
    south
    west
  ].freeze

  def initialize; end

  def orient(direction)
    raise ArgumentError unless DIRECTIONS.include?(direction)

    @direction = direction
  end

  def bearing
    @direction
  end

  def turn_right
    turn_by(1)
  end

  def turn_left
    turn_by(3)
  end

  def at(co_x, co_y)
    @coordinates = [co_x, co_y]
  end

  attr_reader :coordinates

  def advance
    x_or_y = DIRECTIONS.index(@direction).even? ? 1 : 0
    increasing_x_y = DIRECTIONS.index(@direction) < 2 ? 1 : -1
    @coordinates[x_or_y] += increasing_x_y
  end

  private

  def turn_by(number)
    next_index = DIRECTIONS.index(@direction) + number
    @direction = DIRECTIONS[next_index % DIRECTIONS.length]
  end
end

# class Simulator
class Simulator
  INSTRUCTIONS = {
    'L' => :turn_left,
    'R' => :turn_right,
    'A' => :advance

  }.freeze

  def instructions(string_instruction)
    string_instruction.chars.map do |value|
      INSTRUCTIONS.fetch(value)
    end
  end

  def place(robot, placement)
    robot.orient placement[:direction]
    robot.at(placement[:x], placement[:y])
  end

  def evaluate(robot, string_instruction)
    instructions(string_instruction).each do |instruction|
      robot.method(instruction).call
    end
  end
end
