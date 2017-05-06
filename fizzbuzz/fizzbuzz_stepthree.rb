# frozen_string_literal: true
class FizzBuzzStepThree < FizzBuzzStepTwo
  include Report
  def run(first, last)
    values = outputs(first, last)
    report = report(values)
    (values + report).join(' ')
  end
end
