require 'rspec'
require './FizzBuzz_rb.rb'

describe 'FizzBuzz' do
  describe '#calculate' do
    it 'returns Fizz for numbers divisible by 3' do
      result = FizzBuzz.new.calculate(3)
      expect(result).to eq('Fizz')
    end

    it 'returns Buzz for numbers divisible by 5' do
      result = FizzBuzz.new.calculate(5)
      expect(result).to eq('Buzz')
    end

    it 'returns BANG for numbers starting by 1' do
      result = FizzBuzz.new.calculate(11)
      expect(result).to eq('BANG!')
    end

    it 'returns FizzBuzz for numbers divisible by 15' do
      result = FizzBuzz.new.calculate(30)
      expect(result).to eq('FizzBuzz')
    end
  end

end
