# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  a.sort!
  a.each_with_index do |element, index|
    return 0 if element != index + 1
  end
  1
end
