#!/usr/bin/env ruby
require 'minitest/autorun'
require 'fizzbuzz'

describe Math do

  include Math
  
  describe "#fizzbuzz" do

    describe "with fast smoke tests" do

      it "numbers that are not multiples of 3 or 5 => the number as a string" do
        assert_equal("1", fizzbuzz(1))
      end
      
      it "multiples of just 3 => Fizz" do
        assert_equal("Fizz", fizzbuzz(3))
      end

      it "multiples of just 5 => Buzz" do
        assert_equal("Buzz", fizzbuzz(5))
      end
      
      it "multiples of 3 and 5 => FizzBuzz" do
        assert_equal("FizzBuzz", fizzbuzz(15))
      end

    end

    describe "with full sequence of known results" do

      it "should return known results" do
        {
          1 => "1", 
          2 => "2", 
          3 => "Fizz",
          4 => "4", 
          5 => "Buzz", 
          6 => "Fizz", 
          7 => "7", 
          8 => "8", 
          9 => "Fizz", 
          10 => "Buzz", 
          11 => "11", 
          12 => "Fizz", 
          13 => "13", 
          14 => "14", 
          15 => "FizzBuzz"
        }.each_pair{|k,v|
          assert_equal(v, fizzbuzz(k), "fizzbuzz(#{k}) => #{v}")
        }
      end
 
    end

  end        

end
