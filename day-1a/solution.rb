input = File.readlines("./input.txt").map(&:to_i)

def fuel_consumption(mass)
  mass.fdiv(3).floor - 2
end

puts input.sum { |mass| fuel_consumption(mass) }
