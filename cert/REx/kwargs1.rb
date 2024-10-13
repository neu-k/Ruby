def example(**kwargs)       #=> **でハッシュを展開している（ハッシュであることを明示）
  puts kwargs.inspect       #=> {:a=>1, :b=>2, :c=>3}
  puts kwargs.class         #=> Hash
end

example(a: 1, b: 2, c: 3)
