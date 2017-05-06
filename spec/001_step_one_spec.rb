# frozen_string_literal: true
require 'fizzbuzz'
describe 'Tests for Step 1' do
  before(:each) do
  end

  after(:each) do
  end

  let(:fizzbuzz) { FizzBuzz.new }

  context 'Given FizzBuzz Output' do
    it 'For integer return the number' do
      results = fizzbuzz.output(1)
      expect(results).to eq(1)
    end

    it 'For multiple of 3 return fizz' do
      results = fizzbuzz.output(3)
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
  end

  context 'Given FizzBuzz Run' do
    it 'For a continguous range of integers return the number' do
      results = fizzbuzz.run(1, 1)

      expect(results).to eq('1')
    end

    it 'For multiples of 3 return fizz' do
      results = fizzbuzz.run(3, 3)

      expect(results).to eq('fizz')
    end

    it 'For a continugous range of integers do all' do
      results = fizzbuzz.run(1, 20)

      expect(results).to eq('1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz')
    end
  end
end
