# frozen_string_literal: true

class Acronym
  def self.abbreviate(phrase)
    abbreviation = phrase.gsub(/[^A-Za-z0-9 ]/, ' ').split.map do |word|
      (word.chars)[0]
    end.join.upcase
    abbreviation.gsub(/[^A-Za-z0-9 ]/, '')
    # n = splitPhrase.count
    # (0..n).times
    # firstLetter = (splitPhrase[0].chars)[0]
    # secondLetter = (splitPhrase[1].chars)[0]
    # lastLetter = (splitPhrase[2].chars)[0]
    # abbreviation = firstLetter + secondLetter + lastLetter
  end
end
