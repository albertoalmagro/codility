# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  binary = n.to_s(2)
  binary_gaps = binary.gsub(/010/, "0110").scan(/10+1/)
  return 0 if binary_gaps.empty?
  longest_binary_gap = binary_gaps.max_by(&:length)
  longest_binary_gap.length - 2
end
