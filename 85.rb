start = Time.now

TARGET = 2000000

distance_from_target = 2000000

area_of_closest_ways = 0

closest_height = 0

closest_width = 0

def calculate_ways(height, width)
  ways = 0
  height.downto(1) do |h|
    width.downto(1) do |w|
      ways += (height - h + 1) * (width - w +1)
    end
  end
  ways
end

1.upto(100) do |height|
  1.upto(100) do |width|
    ways = calculate_ways(height, width)
    if ways - TARGET > 0
      difference = ways - TARGET
    else
      difference = TARGET - ways
    end

    if difference < distance_from_target
      distance_from_target = difference
      area_of_closest_ways = height * width
      closest_height = height
      closest_width = width
    end
  end
end

puts "The distance_from_target was #{distance_from_target}.  The height and width were #{closest_height} #{closest_width} and the area was #{area_of_closest_ways}"

puts Time.now - start