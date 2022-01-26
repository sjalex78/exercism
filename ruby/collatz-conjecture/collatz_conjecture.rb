# Frozen

# Implemenation of CollatzConjecture
class CollatzConjecture


  def self.steps(positive_integer)
    number_of_steps = 0
    raise ArgumentError if positive_integer < 1

    until positive_integer == 1
      number_of_steps += 1
      if positive_integer.even?
        positive_integer = positive_integer.div(2)
      else
        positive_integer = 3 * positive_integer + 1
      end
    end
    number_of_steps
  end
end
