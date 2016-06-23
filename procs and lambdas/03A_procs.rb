# printable_name = Proc.new { |first, last| last.upcase + ", " + first.upcase }

# p printable_name.call("jordan", "Hudgens")
# p printable_name["jordan", "Hudgens"]

sum_collection = Proc.new do |start, final|
  sum = 0
  (start..final).each do |i|
    sum += i
  end
  sum
end

p sum_collection[10, 30]