random_array = []

1000.times do
  random_array << rand(100000000)
end

few_uniques = []

1000.times do
  few_uniques << rand(4)
end

nearly_sorted = []

1000.times do |x|
  nearly_sorted << x + rand(-5..5)
end

#########

def quicksort(array, from=0, to=nil)
  if to == nil
        # Sort the whole array, by default
        to = array.count - 1
      end

      if from >= to
        # Done sorting
        return
      end

    # Take a pivot value, at the far left
    pivot = array[from]

    # Min and Max pointers
    min = from
    max = to

    # Current free slot
    free = min

    while min < max
      if free == min # Evaluate array[max]
        if array[max] <= pivot # Smaller than pivot, must move
          array[free] = array[max]
          min += 1
          free = max
        else
          max -= 1
        end
        elsif free == max # Evaluate array[min]
          if array[min] >= pivot # Bigger than pivot, must move
            array[free] = array[min]
            max -= 1
            free = min
          else
            min += 1
          end
        else
          raise "Inconsistent state"
        end
      end

      array[free] = pivot

      quicksort array, from, free - 1
      quicksort array, free + 1, to
    end


      def bubble_sort(array)
        return array if array.size <= 1
        swapped = true
        while swapped do
          swapped = false
          0.upto(array.size-2) do |i|
            if array[i] > array[i+1]
              array[i], array[i+1] = array[i+1], array[i] # swap values
              swapped = true
            end
          end
        end

      end

Benchmark.bm do |x|
  # Quick Sort
  x.report("quick-random:")     {quicksort(random_array, from=0, to=nil)}
  x.report("quick-few:")        {quicksort(few_uniques, from=0, to=nil)}
  x.report("quick-nearly:")     {quicksort(nearly_sorted, from=0, to=nil)}

  # Bubble Sort
  x.report("bubble-random:")    {bubble_sort(random_array)}
  x.report("bubble-few:")       {bubble_sort(few_uniques)}
  x.report("bubble-nearly:")    {bubble_sort(nearly_sorted)}

  #Ruby Sort
  x.report("sort-random:")      {random_array.sort}
  x.report("sort-few:")         {few_uniques.sort}
  x.report("sort-nearly:")      {nearly_sorted.sort}
end
