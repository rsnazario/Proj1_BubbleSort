# ############### BUBBLE_SORT Case 1 ############# #

puts 'Case 1: Bubble Sort'
# Bubble sort method that sort items in ascending order

def bubble_sort(arr)
  # outer loop that finds the first element in the array
  (0...arr.length).each do |x|
    # inner loop that compares the selected element with other elements
    (x...arr.length).each do |y|
      # comparison operator that swaps if the element is bigger than the element its been compared
      if arr[x] >= arr[y]
        # swapping:  arr[x] will change to arr[y] and arr[y] to arr[x] if condition is met
        arr[x], arr[y] = arr[y], arr[x]
      end
    end
  end
  # Array returned when sorting is complete
  arr
end

# TEST A
test_1_a = bubble_sort([4, 3, 78, 2, 0, 2])
print "Test A: #{test_1_a} \n"

# TEST B
test_1_b = bubble_sort(%w[walter rafael elbie ariel willow lydia greg israel])
print "Test B: #{test_1_b} \n"

# TEST C
test_1_c = bubble_sort([-10, -41, -100, 18, -2, 90, 46, -23])
print "Test C: #{test_1_c} \n"

# ############### BUBBLE_SORT_BY Case 2 ############# #

# The algorithm traverses through the complete array and find the smallest element.
# Then it sets its position as the first element. The same happens in the sequence for the second, etc.

print "\nCase 2: Bubble Sort By - It accepts a block to define the parameter to sort by \n"

def bubble_sort_by(arr)
  # outer loop that sets the smallest element on it
  (0...arr.length).each do |x|
    # inner loop that traverses the array to check each element
    (x...arr.length).each do |y|
      # comparison that takes base on the yield block as specified
      if yield(arr[x], arr[y]).positive?
        # swapping:  arr[x] will change to arr[y] and arr[y] to arr[x] if condition is met
        arr[x], arr[y] = arr[y], arr[x]
      end
    end
  end
  arr
end

# TEST A
test_2_a = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

# TEST B
test_2_b = bubble_sort_by(%w[abcde abc a abcd abcdefg ab]) do |left, right|
  left.length - right.length
end

# TEST C
test_2_c = bubble_sort_by(%w[lenovo asus dell packardbell macbook razer alienware imac]) do |left, right|
left.length - right.length
end

print "Test A: #{test_2_a}\n"
print "Test B: #{test_2_b}\n"
print "Test C: #{test_2_c}\n"