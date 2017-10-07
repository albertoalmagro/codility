# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  a.sort!
  (0..(a.length)).step(2).each do |index|
    return a[index] if a[index] != a[index+1]
  end
end
