def find_minor(arr)
  minor = arr[0]
  minor_index = 0
  (1...(arr.length)).each do |i|
    if arr[i] < minor
      minor = arr[i]
      minor_index = i  
    end  
  end
  minor_index
  
end

def order_by_selection(arr)
  new_arr = []
  arr.length.times do
    minor = find_minor(arr)
    new_arr.append(arr.delete_at(minor))
  end
  new_arr
end
p order_by_selection([5, 3, 6, 2, 10])