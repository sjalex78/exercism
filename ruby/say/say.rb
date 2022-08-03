class Say

  LIBRARY = {
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    14 => "fourteen",
    20 => "twenty",
    22 => "twenty-two",

  }.freeze

  # def initialize(number)
  #   @number = number
  #  end

  # def in_english
  #   pp @number.length
  #   pp @number
  #   pp LIBRARY[@number]
  # end

  def in_english(number)
    case number
      when 0 ; return "zero"
      when 1 ; return "one"
      when 2 ; return "two"
      when 3 ; return "three"
      when 4 ; return "four"
      when 20 ; return "twenty"
      when 21..29 ; return "twenty-#{in_english(number-20)}"
      when 31..39 ; return "thirty-#{in_english(number-30)}"
      when 100..999
        hundreds = number / 100
        remainder = number % 100
        return "#{in_english(hundreds)} hundred #{in_english(remainder)}"
      when 1000..9999
        thousands = number / 1000
        remainder = number % 1000
        return "#{in_english(thousands)} thousand #{in_english(remainder)}"
    end
  end
end
