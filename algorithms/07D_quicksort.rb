class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))

    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end

array = (1..1_000_000).to_a.shuffle

puts "Starting array"
p array

puts "Ending array"
p array.quicksort