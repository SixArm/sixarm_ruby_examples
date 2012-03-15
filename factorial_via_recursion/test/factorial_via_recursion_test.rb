#!/usr/bin/env ruby
require 'minitest/autorun'
require 'factorial_via_recursion'

describe Math do

  include Math

  describe "#factorial_via_recursion" do

    it "returns the correct factorials" do
      {0 => 1, 1 => 1, 2 => 2, 3 => 6, 4 => 24, 5 => 120, 6 => 720}.each_pair{|k,v|
        assert_equal(v, factorial_via_recursion(k))
      }
    end

    it "rejects n < 0" do
      assert_raises ArgumentError do
        factorial_via_recursion(-1)
      end
    end

    it "rejects non-Fixnum" do
      assert_raises ArgumentError do
        factorial_via_recursion(0.0)
      end
    end

  end
    
end
  
