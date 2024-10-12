module M
  p Module.nesting    #=> [M]
end

M.module_eval(<<-EVAL)
  p Module.nesting    #=> [M]
EVAL

M.module_eval do
  p Module.nesting    #=> []
end

M.instance_eval(<<-EVAL)
  p Module.nesting    #=> [Module]
EVAL

M.instance_eval do
  p Module.nesting    #=> []
end
