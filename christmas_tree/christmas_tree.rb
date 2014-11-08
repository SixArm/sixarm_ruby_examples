=begin

Write a function that takes an integer >= 1
and outputs a "half-christmas-tree" pattern 
of the given height. 

Sample output:
 
height=1
+

height=3
+
-+
+-+
 
height=5
+
-+
+-+
-+-+
+-+-+
 
=end

def use_map_and_substring(i)
  puts (1..i).map{|i| ('-+' * (1+(i-1)/2))[-i..-1]}.join("\n")
end


def use_inject_and_insert
  (1..i).inject('+'){|s,x| puts s; s.insert(0, x.even? ? '+' : '-'))}
end

def use_times_and_concat
  s=''; i.times { s = (['+','-'][s.length % 2]) + s; puts s}
end
