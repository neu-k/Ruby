def foo
  p __method__
end
alias :bar :foo
foo
bar
p __method__
