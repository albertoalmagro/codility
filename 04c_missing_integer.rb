# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

require 'set'

def solution(a)
  s = Set.new(a)
  (1..(s.length + 1)).find do |index|
    !s.include?(index)
  end
end
