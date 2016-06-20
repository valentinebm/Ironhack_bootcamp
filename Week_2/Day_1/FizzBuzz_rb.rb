class FizzBuzz
def calculate(number)
  result = ""
    if number % 3 ==  0
    result = result + "Fizz"
    end

    if number % 5 == 0
    result = result + "Buzz"
    end

    if number.to_s[0] == "1"
    result = result + "BANG!"
    end

    if result == ""
    x

    else
    result
    end

  end
end
