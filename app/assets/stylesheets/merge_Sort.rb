array = [2,3,1,4,6,5,8,7]  # => [2, 3, 1, 4, 6, 5, 8, 7]
sorted_array = []          # => []

array.each_with_index do |num, index|  # => [2, 3, 1, 4, 6, 5, 8, 7]
  if num < num[index+1]                # => false, false, false, false, false, false, false, false
    sorted_array << num
  end                                  # => nil, nil, nil, nil, nil, nil, nil, nil
end                                    # => [2, 3, 1, 4, 6, 5, 8, 7]
array.sort          # => [1, 2, 3, 4, 5, 6, 7, 8]
