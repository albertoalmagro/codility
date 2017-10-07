# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, y, d)
  return 0 if d == 0

  distance_to_jump = (y.abs - x.abs).abs
  jumps = (distance_to_jump / d.abs.to_f).ceil
  jumps
end
