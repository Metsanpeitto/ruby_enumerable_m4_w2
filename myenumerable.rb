module Enumerable
  def my_all?
    return unless block_given?

    a = nil
    each do |n|
      a = true if yield(n)
    end
    a
  end

  def my_any?
    return unless block_given?

    any = false
    each do |n|
      any = true if yield(n)
    end
    any
  end

  def my_filter?
    return unless block_given?

    numbers = []
    each do |n|
      if(yield(n))  
       numbers.push(n)
      end  
    end
    numbers
  end
end
