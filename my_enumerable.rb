module Enumerable
  def my_all?
    return unless block_given?
    response = false
    @list.each do |n|
    if yield(n)
     response = true      
    end
  end
    response
  end

  def my_any?
    return unless block_given?
    any = false
    @list.each do |n|
     if(yield(n))  
       any = true 
      end  
    end
    any
  end

#   def my_filter?
#     return unless block_given?
#     numbers = []
#     @list.each do |n|  
#       if(yield(n))  
#        numbers.push(n)  
#       end 
#     end
#     numbers
#   end

# end
