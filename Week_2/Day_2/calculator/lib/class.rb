class Calculator
  def initialize(first_number, second_number)
    @first_number = first_number
    @second_number = second_number
  end

  def add
    @result = @first_number + @second_number
  end

  def substract
    @result = @first_number - @second_number
  end

  def multiply
    @result = @first_number * @second_number
  end

  def divide
    @result = @first_number / @second_number
  end

end
