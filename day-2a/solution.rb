memory = File.read("input.txt").split(",").map(&:to_i)

def add(memory, *address)
  memory[address[2]] = memory[address[0]] + memory[address[1]]
end

def multiply(memory, *address)
  memory[address[2]] = memory[address[0]] * memory[address[1]]
end

def process(memory)
  memory.each_slice(4) do |opcode, *parameters|
    case opcode
    when  1 then add(memory, *parameters)
    when  2 then multiply(memory, *parameters)
    when 99 then break
    end
  end
end

def calculate_trajectory(memory, noun, verb)
  memory = memory.dup

  memory[1] = noun
  memory[2] = verb

  process(memory)

  memory[0]
end

puts calculate_trajectory(memory, 12, 2)
