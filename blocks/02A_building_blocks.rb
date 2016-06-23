# arr = ["Hi", "there", "from", "ruby"]
# arr.each { |word| puts word}

def building_blocks num
  1.upto(num).each do |i|
    puts "#" * i
  end
end

building_blocks 20