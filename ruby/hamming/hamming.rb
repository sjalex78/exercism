# frozen_string_literal: true

class Hamming
  def self.compute(s1, s2)
    diff_count = 0
    if s1.length != s2.length
      raise ArgumentError if s1.length != s2.length
    elsif s1 == s2
      diff_count
    elsif s1 != s2
      strand_1 = s1.chars
      strand_2 = s2.chars
      strand_1.each_with_index do |_element, i|
        diff_count += 1 if strand_1[i] != strand_2[i]
      end
      diff_count
    end
  end
end
