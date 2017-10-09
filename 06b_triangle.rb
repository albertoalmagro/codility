# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  return 0 if a.length < 3
  a.sort!

  for i in 0..(a.length - 3)
    return 1 if a[i] + a[i + 1] > a[i + 2]
  end
  return 0
end
