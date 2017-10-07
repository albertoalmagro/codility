# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, a)
  leaves_path = {}
  a.each_with_index do |elem, index|
    leaves_path[elem] = 1
    return index if leaves_path.size == x
  end
  -1
end
