def test_proc
  f = Proc.new { return :from_proc }
  f.call
  return :from_method
end

def test_lambda
  f = lambda { return :from_lambda }
  f.call
  return :from_method
end

def test_block
  tap { return :from_block }
  return :from_method
end


p test_proc         # p test_proc()とカッコを付けても同じ
p test_lambda
p test_block
