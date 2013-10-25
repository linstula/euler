# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# # we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# # Find the sum of all the multiples of 3 or 5 below 1000.
require_relative 'test_helper'
#require 'minitest/autorun'
#require 'minitest/pride'

class MultipleFinder
  attr_accessor :number
  def initialize(number)
    @number = number
  end

  def sum_multiples
    multiples_of_three_and_five.inject {|sum, x| sum + x }
  end

  private

  def multiples_of_three_and_five
    multiples = []
    number.times do |n|
      if (n % 3 == 0 || n % 5 == 0) && n != 0
        multiples << n
      end
    end
    multiples
  end
end

describe MultipleFinder do
  let(:multiple_finder) { MultipleFinder.new(10) }

  describe '#sum_array()' do
    it 'returns the sum of an array of integers' do
      num = MultipleFinder.new(10)
      num.sum_multiples.must_equal 23
    end
  end
end

puts "The answer is: #{MultipleFinder.new(1000).sum_multiples}"
