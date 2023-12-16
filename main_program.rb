def fibs_rec(n)
  return [0] if n <= 1
  return [0, 1] if n == 2

  fib_sequence = fibs_rec(n - 1)
  fib_sequence << fib_sequence[-1] + fib_sequence[-2]
  fib_sequence
end

def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2
  first_half = array[0...middle]
  second_half = array[middle..-1]

  first_sort = merge_sort(first_half)
  second_sort = merge_sort(second_half)

  merged_array = []
  until first_sort.empty? || second_sort.empty?
    merged_array <<
      if first_sort.first < second_sort.first
        first_sort.shift
      else
        second_sort.shift
      end
  end
  merged_array + first_sort + second_sort
end