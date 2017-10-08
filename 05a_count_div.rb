# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
  extra = a % k == 0 ? 1 : 0
  b/k - a/k + extra
end
