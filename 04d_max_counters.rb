# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n, a)
  max = 0
  counters = Array.new(n, max)
  a.each do |counter|
    if counter == n + 1
      counters.fill(max)
    else
      counters[counter - 1] += 1
      max = counters[counter - 1] if counters[counter - 1] > max
    end
  end
  counters
end
