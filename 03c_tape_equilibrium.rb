# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  left_sum  = a.first
  right_sum = a.drop(1).reduce(:+)
  min_diff  = (left_sum - right_sum).abs

  a.take(a.length - 1).drop(1).each do |element|
    left_sum  += element
    right_sum -= element

    current_diff = (left_sum - right_sum).abs

    if current_diff < min_diff
      min_diff = current_diff
    end
  end
  min_diff
end
