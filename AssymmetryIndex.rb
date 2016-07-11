# The  test cases used.
# Example given (Balanced left):
#   Input: (5, [5, 5, 1, 7, 2, 3, 5])
#   Result: 4
# Smallest possible:
#   Input: (1, [1, 0])
#   Result: 1 (even 0 would be fine) :)
# Balanced right:
#   Input: (1, [1, 5, 6, 1, 1])
#   Result: 2
# No assymmetry index (No presence of X):
#   Input: (10, [4, 5, 5,6])
#   Result: -1
# No assymmetry index (X present):
#   Input: (8, [8,8,8])
#   Result: -1
# Corner case (N=1):
#   Input: (0, [0])
#   Result: -1

#************************************************************************************
# Approach 1:
# Very basic implementation. Uses simple iteration.
# The only optimization is returning the moment the asymmetry index is found.
# def solution(x, a)
#   (1..a.size-1).each do |i|
#     left = a[0..i-1].select{|h| h == x }.size
#     right = a[i..-1].select{|h| h != x }.size
#     return i if left == right
#   end
#   return -1
# end

#**************************************************************************************
# Approach 2:
# Assuming the index is in the middle
# Starting the iteration from the middle and moving left or right based on the finding
def solution(x, a)
  i = a.size/2
  while(i > 0 && i < a.size)
    left = a[0..i-1].select{|h| h == x }.size
    right = a[i..-1].select{|h| h != x }.size
    return i if left == right
    if left > right
      i -= 1
    else
      i += 1
    end
  end
  return -1
end
