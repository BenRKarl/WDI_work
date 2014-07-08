


def bubble_sort(list)
    list.each_index do |i|
    swap_count = 0
    (list.length - i - 1).times do |job|

        if list[job] > list[job + 1]
          list[job], list[job + 1] = list[job + 1], list[job]
          swap_count += 1
        end
    end
    if swap_count == 0
      return list
    end
    end
end

list = [9, 0, 45, 3, 6, 7, 20, 19, 5]
#puts list
#puts bubble_sort(list)



def quick_sort(array)
  if array.length < 3
    if array.length == 2
      if array[0] > array[1]
        array[0], array[1] = array[1], array[0]
      end
    end
    return array
  else
    pivot = array[array.length-1]
    left_arr = []
    right_arr = []
    array.each do |element|
      if element < pivot
        left_arr << element
      elsif element > pivot
        right_arr << element
      end
    end
    x = quick_sort(left_arr)
    y =  quick_sort(right_arr)
    final = []
    final << x
    final << pivot
    final << y
    return final
  end
end

x = quick_sort(list)
puts x



def partition(items, left, right, pindex)
   pvalue = items [pindex]
   swap(items, pindex, right)
   sindex = left
   for i in left .. right-1
       if items[i] <= pvalue
          swap(items, sindex, i)
          sindex = sindex + 1
       end
   end

   swap(items, right, sindex)
   return sindex
end

def swap (arr, l, r)
  tmp = arr [l]
  arr[l] = arr[r]
  arr[r] = tmp
end

def qsort(items, left, right)
    if (right > left)
        pIndex = left
        newPindex = partition(items, left, right, pIndex)
        qsort(items, left, newPindex-1)
        qsort(items, newPindex+1, right)
    end

end

def quicksort(items)
  qsort(items, 0, items.size - 1)
end
