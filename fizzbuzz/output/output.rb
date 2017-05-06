module Output
  FIZZ = 'fizz'.freeze
  BUZZ = 'buzz'.freeze
  LUCKY = 'lucky'.freeze
  INTEGER = 'integer'.freeze
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
