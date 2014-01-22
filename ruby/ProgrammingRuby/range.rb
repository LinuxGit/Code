class PowerOfTwo
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def succ
    PowerOfTwo.new(@value + @value)
  end

  def <=>(other)
    @value <=> other.value
  end

  def to_s
    @value.to_s
  end
end

p1 = PowerOfTwo.new(9)
p2 = PowerOfTwo.new(72)

puts (p1..p2).to_a

