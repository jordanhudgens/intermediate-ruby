def divider(num1, num2)
  begin
    nil.upcase
  rescue ZeroDivisionError => e
    "An error occurred: #{e}"
  end
end

p divider(1, 0)