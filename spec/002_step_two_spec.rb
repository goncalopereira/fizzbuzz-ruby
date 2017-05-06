# frozen_string_literal: true
require 'require_all'
require_rel '../fizzbuzz'
describe 'Tests for Step 2' do
  let(:fizzbuzz) { FizzBuzzStepTwo.new }

  context 'Given FizzBuzz Output' do
    it 'For integer return the number' do
      results = fizzbuzz.output(1)
      expect(results).to eq(1)
    end

    it 'For multiple of 3 return fizz' do
      results = fizzbuzz.output(6)
      expect(results).to eq('fizz')
    end

    it 'For multiple of 5 return buzz' do
      results = fizzbuzz.output(5)
      expect(results).to eq('buzz')
    end

    it 'For multiple of 15 return fizzbuzz' do
      results = fizzbuzz.output(15)
      expect(results).to eq('fizzbuzz')
    end

    it 'For value 3 return lucky' do
      results = fizzbuzz.output(3)
      expect(results).to eq('lucky')
    end
  end

  context 'Given FizzBuzz Run' do
    let(:expected_result) {  '1 2 lucky 4 buzz fizz 7 8 fizz buzz 11 fizz lucky 14 fizzbuzz 16 17 fizz 19 buzz' }
    it 'For a continugous range of integers do all' do
      results = fizzbuzz.run(1, 20)

      expect(results).to eq(expected_result)
    end
  end
end
