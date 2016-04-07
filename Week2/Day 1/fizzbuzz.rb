# FizzBuzz
class FizzBuzz
  def answer(number)
    multiple3 = number % 3 == 0
    multiple5 = number % 5 == 0
    case
    when (multiple3 && multiple5) then 'FizzBuzz'
    when multiple3 then 'Fizz'
    when multiple5 then 'Buzz'
    else number
    end
  end
end
