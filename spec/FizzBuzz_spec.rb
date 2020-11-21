require './FizzBuzz'

def nth_answer(n)
  fizzbuzz = FizzBuzz.new
  i = 1
  until i >= n
    fizzbuzz.answer
    i = i + 1
  end
  fizzbuzz.answer
end

describe "fizzbuzz" do
  context "1st call" do
    it "returns 1" do
      expect(nth_answer(1)).to eq(1)
    end
  end
  context '2nd call' do
    it "returns 2" do
      expect(nth_answer(2)).to eq(2)
    end
  end  
  context 'when called multiples-of-3 times' do
    fit "returns Fizz" do
      expect(nth_answer(3)).to eq('Fizz')
      expect(nth_answer(6)).to eq('Fizz')
      expect(nth_answer(9)).to eq('Fizz')
    end
  end
  context 'when called multiples-of-5 times' do
    fit "returns Buzz" do
      expect(nth_answer(5)).to eq('Buzz')
      expect(nth_answer(10)).to eq('Buzz')
      expect(nth_answer(20)).to eq('Buzz')
    end
  end
  context 'when called multiples-of-15 times' do
    fit "returns FizzBuzz" do
      expect(nth_answer(15)).to eq('FizzBuzz')
      expect(nth_answer(30)).to eq('FizzBuzz')
      expect(nth_answer(45)).to eq('FizzBuzz')
    end
  end
end