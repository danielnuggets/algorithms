class Sort
  def insertion_sort(array)
    array.each_with_index do |elem, i|
      next if i.zero?
      j = i
      while j > 0 && elem < array[j - 1]
        array[j] = array[j - 1]
        j -= 1
      end
      array[j] = elem
    end
    array
  end

  def selection_sort(array)
    array.each_with_index do |elem, i|
      min_index = array[i..-1].each_with_index.min[1]
      # array.each_with_index.min will return [minvalue, index]
      # therefore, array.each_with_index.min[1] will return the min index. 
      # this min index is for array[i..-1], so to get the original array's index we must add i.
      array[i], array[min_index + i] = array[min_index + i], array[i]
      # this swaps the values
    end
    array
  end

  def bubble_sort(array)
    swaps = 1
    while swaps > 0
      swaps = 0
      array[0..-2].each_with_index do |elem, i|
        if array[i + 1] < array[i]
          array[i], array[i + 1] = array[i + 1], array[i]
          swaps += 1
        end
      end
    end
    array
  end
end


# Test Insertion Sort
sort = Sort.new
test_array = [3, 2, -1, 2, 0, 100]
actual = sort.insertion_sort(test_array)
expected = [-1, 0, 2, 2, 3, 100]
if actual == expected
  puts 'Insertion Sort - PASS'
else
  puts 'Insertion Sort - FAIL'
end

# Test Selection Sort
sort = Sort.new
test_array = [3, 2, -1, 2, 0, 100]
actual = sort.selection_sort(test_array)
expected = [-1, 0, 2, 2, 3, 100]
if actual == expected
  puts 'Selection Sort - PASS'
else
  puts 'Selection Sort - FAIL'
  puts 'expected: [-4, 1, 2, 2, 4, 5, 74, 457]'
  puts 'actual: ' + actual.to_s
end

# Test Bubble Sort
sort = Sort.new
test_array = [3, 2, -1, 2, 0, 100]
actual = sort.bubble_sort(test_array)
expected = [-1, 0, 2, 2, 3, 100]
if actual == expected
  puts 'Bubble Sort - PASS'
else
  puts 'Bubble Sort - FAIL'
  puts 'expected: [-4, 1, 2, 2, 4, 5, 74, 457]'
  puts 'actual: ' + actual.to_s
end
