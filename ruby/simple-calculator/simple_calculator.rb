# frozen_string_literal: true

# Service to run the Simple Calculator

class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    if second_operand.to_i.zero? && operation == '/'
      'Division by zero is not allowed.'
    elsif if first_operand.class != Integer
            raise ArgumentError
          elsif second_operand.class != Integer
            raise ArgumentError
          end
    elsif !ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation
    elsif answer = first_operand.send(operation, second_operand)
      "#{first_operand} #{operation} #{second_operand} = #{answer}"
    end
  end
end
