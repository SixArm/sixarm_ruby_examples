#!/usr/bin/env ruby

module Math

  def factorial_via_inject_with_memoize(n)
    raise ArgumentError.new("must be Fixnum") if !n.kind_of?(Fixnum)
    raise ArgumentError.new("must be >=0") if n < 0
    case n
    when 0, 1
      1
    else
      @@factorial_via_inject_and_memoize[n] ||= n.downto(2).inject(1){|x,y| x *= y}
    end
  end
  @@factorial_via_inject_and_memoize={}

end
