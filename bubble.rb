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

#TEST 1
result_a = bubble_sort([4, 3, 78, 2, 0, 2])
print result_a
puts " "

#TEST 2
result_b = bubble_sort(%w(walter rafael elbie ariel willow lydia greg israel))
print result_b
puts " "

#TEST 3
result_c = bubble_sort([-10, -41, -100, 18, -2, 90, 46, -23])
print result_c
puts " "

