def bubble_sort(arr)
  for x in 0...arr.length
    for y in x...arr.length
      if arr[x] >= arr[y]
        arr[x],arr[y] = arr[y],arr[x]
      end
    end
  end
  return arr 
end

result = bubble_sort([4, 3, 78, 2, 0, 2])

print result
puts " "