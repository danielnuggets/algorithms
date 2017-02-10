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
end


# Test
sort = Sort.new
test_array = [2, 3, 5, 1, 3, 0, 233, -5]
actual = sort.insertion_sort(test_array)
expected = [-5, 0, 1, 2, 3, 3, 5, 233]

if actual == expected
  puts 'PASS'
else
  puts 'FAIL'
end
