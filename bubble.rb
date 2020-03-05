# ############### BUBBLE_SORT Case 1 ############# #


#Bubble sort method that sort items in ascending order

def bubble_sort(arr)
  #outer loop that finds the first element in the array
  for x in 0...arr.length
    #inner loop that compares the selected element with other elements
    for y in x...arr.length
      #comparison operator that swaps if the element is bigger than the element its been compared
      if arr[x] >= arr[y]
        #swapping  arr[x] will change to arr[y] and arr[y] to arr[x] if condition is met
        arr[x],arr[y] = arr[y],arr[x]
      end
    end
  end
  #Array returned when sorting is complete
  return arr 
end

#TEST A
test_1_a = bubble_sort([4, 3, 78, 2, 0, 2])
print test_1_a
puts " "

#TEST B
test_1_b = bubble_sort(%w(walter rafael elbie ariel willow lydia greg israel))
print test_1_b
puts " "

#TEST C
test_1_c = bubble_sort([-10, -41, -100, 18, -2, 90, 46, -23])
print test_1_c
puts " "

# ############### BUBBLE_SORT_BY Case 2 ############# #

def bubble_sort_by(arr) 
  for x in 0...arr.length
    for y in x...arr.length
      if yield(arr[x], arr[y]) > 0 
        arr[x],arr[y] = arr[y],arr[x]
      end
    end
  end
  return arr
end


test_2_a = bubble_sort_by(["Hi", "Hello", "Hey"]) do
  |left, right|
  left.length - right.length
end

test_2_b = bubble_sort_by(%w(abcde abc a abcd abcdefg ab)) do
  |left, right|
  left.length - right.length
end

test_2_c = bubble_sort_by(%w(lenovo asus dell packardbell macbook razer alienware imac)) do
|left, right|
left.length - right.length
end

print test_2_a
puts
print test_2_b
puts 
print test_2_c
puts