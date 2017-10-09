# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

MAX_PASSING_CARS = 1_000_000_000

def solution(a)
  zeros_count        = 0
  passing_cars_count = 0

  a.each do |car|
    if car == 1
      passing_cars_count += zeros_count
    else
      zeros_count += 1
    end
    return -1 if passing_cars_count > MAX_PASSING_CARS
  end
  passing_cars_count
end
