# frozen_string_literal: true
class FizzBuzz
  def run(first, last)
    (first..last)
      .to_a
      .map { |value| output(value) }
      .join(' ')
  end

  FIZZ = 'fizz'
  BUZZ = 'buzz'
  def output(value)
    fizz = (value % 3).zero?
    buzz = (value % 5).zero?
    case
    when fizz&&buzz then FIZZ+BUZZ
    when fizz then FIZZ
    when buzz then BUZZ
    else value
    end
  end
end
