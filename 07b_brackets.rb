# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s)
  return 1 if s.empty?

  stack = []
  chars = s.chars
  chars.each do |char|
    if should_push?(char)
      stack.push(char)
    else
      candidate = stack.pop
      return 0 unless matches?(candidate, char)
    end
  end
  stack.empty? ? 1 : 0
end

def should_push?(char)
  ['(', '[', '{'].include? char
end

def matches?(candidate, char)
  return char == ')' if candidate == '('
  return char == ']' if candidate == '['
  return char == '}' if candidate == '{'
  return false
end
