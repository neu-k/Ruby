def foo
  f = Proc.new{
    next 1
    2
  }
end

p foo().call