def my_min(list)
  i = 0
  while i < list.length
    return list[i] if list.all?{|el| el >= list[i]}
    i += 1
  end

end
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#O(n^2) time complexity
# p my_min(list)

def faster_min(list)
    min = list[0]
    list.each{|el| min = el if  el < min}
    min
end
# p faster_min(list)
# O(n)

    list = [5, 3, -7]

def largest_contiguous_subsum(list)
    subs = []
    i = 0
    while i < list.length 
        temp_arr = []
        j = i
        while j < list.length
            temp_arr << list[j]
            subs << temp_arr.dup
            j += 1
        end
        i += 1
    end
    subs
    sum = 0
    chosen = []
    subs.each  do |subarr|
     if subarr.sum > sum
        sum = subarr.sum
        chosen = subarr
     end
    end
    chosen
end

p largest_contiguous_subsum(list)