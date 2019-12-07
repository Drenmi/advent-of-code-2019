input = File.readlines("input.txt").map(&:to_i)

def total_fuel_consumption(mass)
  total_consumption = 0

  while fuel_consumption(mass).positive?
    total_consumption += mass = fuel_consumption(mass)
  end

  total_consumption
end

def fuel_consumption(mass)
  mass.fdiv(3).floor - 2
end

puts input.sum { |mass| total_fuel_consumption(mass) }
