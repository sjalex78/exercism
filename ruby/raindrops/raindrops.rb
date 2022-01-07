# frozen_string_literal: true

class Raindrops
  KEY = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  def self.convert(number)
    number_store = []
    KEY.each_key do |key|
      number_store << KEY[key] if (number % key).zero?
    end
    # midway thro refactoring
    # if number % KEY.keys[0] == 0
    #   number_store << KEY[KEY.keys[0]]
    # end
    # if number % KEY.keys[1] == 0
    #   number_store << KEY[KEY.keys[1]]
    # end
    # if number % KEY.keys[2] == 0
    #   number_store << KEY[KEY.keys[2]]
    # end

    number_store.empty? ? number.to_s : number_store.join
    # Long hand of line above
    # if number_store.empty?
    #   number_store << number.to_s
    # end
    # number_store.join
  end
end

# orginal solution
# def self.convert(number)
#   number_store = []
#   if number % 3 == 0
#     number_store << 'Pling'
#   end
#   if number % 5 == 0
#     number_store << 'Plang'
#   end
#   if number % 7 == 0
#     number_store << 'Plong'
#   end
#   if number_store.empty?
#     number_store << number.to_s
#   end
#   number_store.join
# end
