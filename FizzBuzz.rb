class FizzBuzz

  def initialize
    @counter = 0
  end
  
  def multiple_of_3
    if @counter % 3 == 0
      true
    else
      false
    end
  end
  
  def multiple_of_5
    if @counter % 5 == 0
      true
    else
      false
    end
  end
  
  def answer
    @counter += 1
    if multiple_of_3 and !multiple_of_5
      "Fizz"
    elsif multiple_of_5 and !multiple_of_3
      "Buzz"
    elsif multiple_of_3 and multiple_of_5
      "FizzBuzz"
    else
      @counter
    end
  end

end