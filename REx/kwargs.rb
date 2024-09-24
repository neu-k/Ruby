def example(**kwargs)
  puts kwargs.class
  puts kwargs.inspect
end

example(a: 1, b: 2, c: 3)
