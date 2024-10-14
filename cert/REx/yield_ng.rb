def block_test
  5.times { yield }
end

block_test
#=> no block given (yield) (LocalJumpError)