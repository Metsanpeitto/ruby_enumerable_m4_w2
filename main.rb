require_relative 'myenumerable'

class MyList
  extend Enumerable

  def initialize(int1, int2, int3, int4)
    @list = [int1, int2, int3, int4]
  end

  def all?
    puts(@list.my_all? { |num| num >= 0 })
  end

  def any?
    puts(@list.my_any? { |num| num >= 0 })
  end

  def filter?
    puts(@list.my_filter? { |num| num == 0 })
  end
end

list = MyList.new(1, 2, 3, 4)
puts 'Test #all?'
puts 'Should return true'
puts list.all? { |e| e < 5 }
puts 'Test #any?'
puts 'Should return true'
puts list.any? { |e| e > 5 }
puts 'Test #filter?'
puts 'Should return 3'
puts list.filter? { |e| e == 3 }
