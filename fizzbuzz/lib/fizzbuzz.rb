#!/usr/bin/env ruby

module Math

  def fizzbuzz(n)
    raise ArgumentError if !n.kind_of?(Fixnum)
    if n % 15 == 0
      "FizzBuzz"
    else
      if n % 3 == 0
        "Fizz"
      else
        if n % 5 == 0
          "Buzz"
        else
          "#{n}"
        end
      end
    end
  end

end
