require 'rspec'
require './fizzbuzz'

RSpec.describe 'add method' do
  before :each do
    @fizzy = FizzBuzz.new
  end

  it 'should return FizzBuzz for multiples of 3 and 5' do
    expect(@fizzy.answer(15)).to eq('FizzBuzz')
  end

  it 'should return Fizz for multiples of 3' do
    expect(@fizzy.answer(3)).to eq('Fizz')
  end

  it 'should return Buzz for multiples of 5' do
    expect(@fizzy.answer(5)).to eq('Buzz')
  end

  it 'should return itself for non -multiples of 5&3' do
    expect(@fizzy.answer(7)).to eq(7)
  end
end
