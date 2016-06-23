def html_printer(&block)
  puts "<html>"
  puts "  <body>"

  yield

  puts "  </body>"
  puts "</html>"
  
  yield
end

html_printer do
  puts "\t<p>Title: My Title</p>"
  puts "\t<p>My great post content</p>"
end