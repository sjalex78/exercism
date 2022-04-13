class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(keynum)
    needles = []
    haystack = (1...keynum).to_a
    haystack.each do |hay|
      @factors.each do |factor|
        if hay %  factor == 0
            needles << hay
        end
      end
    end
    #map the array and see if it is divisible by either factor
    # this that into another array
    #sum of the array2
    needles.uniq.sum
  end
end


#prefactor
# needles = []
# needles.sum

#step 2
    # array of number up to keynum
    #  heystack = (1..keynum).to_a

    #step 3
# haystack.each do |hay|
#       if hay % @factors[0] == 0
#           needles << hay
#       end
# (passed a number of single factor tests)
