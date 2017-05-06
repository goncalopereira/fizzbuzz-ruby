# frozen_string_literal: true
module Report
  include OutputValues

  REPORT_SORTED_OUTPUT = [FIZZ, BUZZ, FIZZ + BUZZ, LUCKY, INTEGER].freeze

  def report(outputs)
    report_results = sum_outputs(outputs)

    REPORT_SORTED_OUTPUT.map do |key|
      "#{key}: #{report_results[key]}"
    end
  end

  private

  def sum_outputs(outputs)
    report_results = Hash.new(0)
    outputs.each do |key|
      key = INTEGER if key.to_i != 0
      report_results[key] += 1
    end
    report_results
  end
end
