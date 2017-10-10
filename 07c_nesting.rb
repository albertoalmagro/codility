# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s)
  return 1 if s.empty?

  stack = []
  chars = s.chars
  chars.each do |char|
    if char == '('
      stack.push(char)
    else
      return 0 unless stack.pop == '('
    end
  end
  stack.empty? ? 1 : 0
end
