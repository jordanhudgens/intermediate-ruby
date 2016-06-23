bad_slug = "This is a bad $lug"
good_slug = "This is a good slug"

def convert_to_slug(str)
  return "Sorry, that's not valid" if str.include?("$")
  str.gsub(" ", "-").downcase
end

puts convert_to_slug(bad_slug)
puts convert_to_slug(good_slug)