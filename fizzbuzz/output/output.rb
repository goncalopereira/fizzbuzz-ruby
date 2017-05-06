module Output
  include OutputValues
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
