# frozen_string_literal: true

# Implementation of wordy
class WordProblem
  OPERATIONS = {
    plus: :+,
    minus: :-,
    divided: :/,
    multiplied: :*
  }.freeze

  def initialize(question)
    @question = question
  end

  def answer
    terms = @question.split
    terms.delete_if { |a| %w[What is by].include?(a) }

    terms.map! do |term|
      matched_integers = term.match(/(-?\d+)/)
      matched_operation = term.match(/([a-zA-Z]+)/)
      if matched_integers
        matched_integers[1].to_i
      elsif matched_operators
        matched_operators[1].to_sym
      end
    end

    output = terms[0] # assuming first element is always a number
    terms.each_with_index do |element, index|
      next unless element.is_a? Symbol

      raise ArgumentError if OPERATIONS[element].nil?

      output = output.public_send(
        OPERATIONS[element],
        terms[index + 1] # careful if past end of array
      )
    end
    output
  end
end
