def solution(a)
  dp = [a[0]]
  a.each_with_index do |val, i|
    (1..6).each do |j|
      next if i + j >= a.size
      new_position = i+j
      new_pos_score = dp[i] + a[new_position]
      if dp[new_position].nil? || dp[new_position] < new_pos_score
        dp[new_position] = new_pos_score
      end
    end
  end
  dp[-1]
end
