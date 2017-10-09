def solution(a)
  min_index = 0
  min_avg   = avg(a[0], a[1])

  (1..(a.length - 2)).each do |index|
    two_avg = avg(a[index], a[index + 1])
    if min_avg > two_avg
      min_index = index
      min_avg   = two_avg
    end

    if index + 2 < a.length
      three_avg = avg(a[index], a[index + 1], a[index + 2])
      if min_avg > three_avg
        min_index = index
        min_avg   = three_avg
      end
    end
  end
  min_index
end

def avg(*args)
  args.reduce(:+) / args.size.to_f
end
