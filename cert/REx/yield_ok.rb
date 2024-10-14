def block_test
  5.times { yield }
end

block_test {
  puts "ブロック本体"
}
#=> ブロック本体
#=> ブロック本体
#=> ブロック本体
#=> ブロック本体
#=> ブロック本体
