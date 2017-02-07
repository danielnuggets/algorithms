class Sort
  def insertion_sort(array)
    sorted_array = [array[0]]
    array.each_with_index do |elem, index|
      next if index == 0
      sorted_index = index
      while sorted_index > 0 && sorted_array[sorted_index - 1] > elem
        sorted_array[sorted_index] = sorted_array[sorted_index - 1]
        sorted_index -= 1
      end
      sorted_array[sorted_index] = elem
    end
    return sorted_array
  end
end

sort = Sort.new
array1 = [2, 6, 3, 5, 8, 1, 3]
p sort.insertion_sort(array1)
