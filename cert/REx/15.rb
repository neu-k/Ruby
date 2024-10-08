class String
  alias :hoge1 :reverse
  alias hoge2 reverse
end

p "12345".hoge1
p "12345".hoge2
