#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

require_relative 'test_helper'
require 'prime'
require 'benchmark'

class Fixnum
  def largest_prime_factor
    get_primes.reverse.each do |prime|
      if self % prime == 0
        return prime
      end
    end
  end

  def get_primes
    primes = []
    Prime.each(self) do | prime |
      primes.push(prime)
    end
    primes.sort
  end
end

describe Fixnum do
  let(:num) { 13195 }

  context '#largest_prime_factor' do
    it 'will return the largest prime factor' do
      num.largest_prime_factor.must_equal 29
    end
  end

  #context '#get_primes' do
    #it 'returns all primes up to self' do
      #num.get_primes.must_equal [2, 3, 5, 7, 11]
    #end
  #end
end

#puts Benchmark.measure { 13195.get_primes }
puts Benchmark.measure { 13195.largest_prime_factor }
#puts "The answer is: #{600851475143.largest_prime_factor}"
