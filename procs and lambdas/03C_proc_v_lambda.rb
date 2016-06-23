def method_one
  Proc.new { p "String from Proc"}.call
  return "String from method one"
end

def method_two
  from_lambda = -> { return "String from Lambda"}.call
  return "String from method two #{from_lambda}"
end

p method_one
p method_two