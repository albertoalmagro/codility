def solution(a, b)
  i = find_next_index(b, 0)
  can_move = i && b.length > 1

  while can_move
    if a[i] > a[i+1]
      a.delete_at(i+1)
      b.delete_at(i+1)
    else
      a.delete_at(i)
      b.delete_at(i)
    end
    i = find_next_index(b, i - 1)
    can_move = i != nil
  end
  a.size
end

def find_next_index(b, start)
  (start..(b.length - 2)).each { |i| return i if b[i] == 1 && b[i + 1] == 0 }
  return nil
end
