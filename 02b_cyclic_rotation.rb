# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, k)
  return a if a.empty?
  b = a.dup
  k.times do
    b = [b.pop] + b
  end
  b
end

extreme_empty
empty array ✔OK
▶ single
one element, 0 <= K <= 5 ✔OK
▶ double
two elements, K <= N ✔OK
▶ small1
small functional tests, K < N ✔OK
▶ small2
small functional tests, K >= N ✔OK
▶ small_random_all_rotations
small random sequence, all rotations, N = 15 ✔OK
▶ medium_random
medium random sequence, N = 100 ✔OK
▶ maximal
maximal N and K
