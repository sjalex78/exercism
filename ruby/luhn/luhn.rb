
# implementation of Luhn

class Luhn

def self.valid?(string)
  pp string
  if string.match(/(\d{3})/)
    true
  end
end

end
