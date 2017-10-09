# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s, p, q)
  m = p.length - 1

  (0..m).map do |k|
    query = s[p[k]..q[k]]
    impact_factor(query)
  end
end

def impact_factor(nucleotids)
  return 1 if nucleotids.include? "A"
  return 2 if nucleotids.include? "C"
  return 3 if nucleotids.include? "G"
  return 4
end

