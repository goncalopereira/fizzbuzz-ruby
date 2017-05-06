# frozen_string_literal: true
class FizzBuzzStepTwo < FizzBuzz
  def output(value)
    if value.to_s.include? '3'
      'lucky'
    else
      super(value)
    end
  end
end
