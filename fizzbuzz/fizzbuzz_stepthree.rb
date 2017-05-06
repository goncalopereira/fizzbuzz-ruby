# frozen_string_literal: true
class FizzBuzzStepThree < FizzBuzzStepTwo
  def outputs(first, last)
    all_outputs = super(first, last)
    report = generate_report(all_outputs)
    all_outputs + report
  end

  REPORT_SORTED_OUTPUT = [FIZZ, BUZZ, FIZZ + BUZZ, LUCKY, INTEGER].freeze

  def generate_report(outputs)
    report_results = Hash.new(0)
    outputs.each do |key|
      key = INTEGER if key.to_i != 0
      report_results[key] += 1
    end

    REPORT_SORTED_OUTPUT.map do |key|
      "#{key}: #{report_results[key]}"
    end
  end
end
