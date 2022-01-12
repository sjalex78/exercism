# frozen_string_literal: true

# Service to run the Simple Calculator

class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError if first_operand.class != Integer
    raise ArgumentError if second_operand.class != Integer
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)

    answer = first_operand.send(operation, second_operand)
    "#{first_operand} #{operation} #{second_operand} = #{answer}"
  rescue ZeroDivisionError
    'Division by zero is not allowed.'
  end
end
