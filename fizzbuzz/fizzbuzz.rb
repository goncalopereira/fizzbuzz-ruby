# frozen_string_literal: true
class FizzBuzz
  include Output
  def run(first, last)
    outputs(first, last).join(' ')
  end

  private

  def outputs(first, last)
    (first..last)
      .map { |value| output(value) }
  end
end
