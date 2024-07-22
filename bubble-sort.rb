def bubble_sort(elements)
  count = 0

  sorted_elements = elements.each_with_index do |value, index|
    break if index == elements.length-1 

    left = value
    right = elements[index+1] 


    if left > right
      elements[index], elements[index+1] = elements[index+1], elements[index]
      count += 1
    end

  end

  bubble_sort(elements) if count > 0

  return elements
end


# p bubble_sort([4,3,1,0])
p bubble_sort([4,3,78,2,0,2])