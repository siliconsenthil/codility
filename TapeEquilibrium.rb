# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  left, right = 0, a.reduce(:+)
  min = 0
  (1...a.size).to_a.each do |i|
    left = left + a[i-1]
    right = right - a[i-1]
    diff = (left - right).abs
    if i == 1
      min = diff
    else
      min = diff < min ? diff : min
    end
  end
  min
end
