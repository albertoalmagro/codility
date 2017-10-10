# Note this solution scores 100% in results but doesn't score 100% in performance.

def solution(a)
  intersections = 0

  boundaries = a.each_with_index.map { |radius, center| [center - radius, center + radius] }
  sorted_boundaries = boundaries.sort { |a, b| a.first <=> b.first }
  disc_count        = sorted_boundaries.count

  sorted_boundaries.each_with_index do |boundary, i|
    disc_end = boundary[1]

    ((i + 1)..(disc_count - 1)).each do |j|
      if disc_end >= sorted_boundaries[j].first
        intersections += 1
      else
        break
      end
    end
    return -1 if intersections > 10_000_000
  end
  intersections
end
