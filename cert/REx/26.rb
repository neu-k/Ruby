def foo(arg1:100, arg2:200)
  puts arg1
  puts arg2
end

option = {arg2: 900}

foo arg1: 200, **option   #=> OK

foo **option, arg1: 200   #=> OK

# foo arg1: 200, option   #=> SyntaxError
