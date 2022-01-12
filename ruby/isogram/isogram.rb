# frozen_string_literal: true

class Isogram
  def self.isogram?(input)
    split_input = input.downcase.gsub(/\W/, '').chars
    split_input.count == split_input.uniq.count
  end
end
