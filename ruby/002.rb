#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

require_relative 'test_helper'

class Fibonacci
  attr_reader :num
  #attr_accessor :first_term, :second_term, :sum

  def initialize(num)
    @num = num
  end

  def sum_of_even_terms
    #sum = 0
    #first_term = second_term = 1

    sum = 0
    first_term = second_term = 1

    while first_term < num
      second_term, first_term = first_term, second_term + first_term
      sum += second_term if second_term.even?
    end
    sum
  end
end

describe Fibonacci do
  let(:fib) { Fibonacci.new(100) }

  context '#sum_of_even_terms' do
    it 'will return the sum of even terms' do
      fib.sum_of_even_terms.must_equal 44
    end
  end
end

fib = Fibonacci.new(4000000)
puts "The answer is: #{fib.sum_of_even_terms}"

