def solution(a)
  # write your code in Ruby 2.2
  r = {}
  a.each do |i|
    if r[i]
      r.delete(i)
    else
      r[i] = true
    end
  end
  r.keys.first
end
