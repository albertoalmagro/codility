# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  return a[0] * a[1] * a[2] if a.length == 3
  a.sort!

  r  = a[a.length - 3] * a[a.length - 2] * a[a.length - 1]
  l  = a[0] * a[1] * a[2]
  lr = a[0] * a[1] * a[a.length - 1]
  rl = a[0] * a[a.length - 2] * a[a.length - 1]

  [r, l, lr, rl].max
end
