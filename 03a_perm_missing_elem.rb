# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  return 1 if a.empty?
  a.sort!
  return 1 if a.first > 1
  return a.first + 1 if a.length <2
  (0..(a.length)).each do |index|
    return a[index] + 1 if a[index] + 1 != a[index + 1]
  end
  return a.last + 1
end
