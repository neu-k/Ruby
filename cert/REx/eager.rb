lazy_enum = (1..).each.lazy

# select が遅延評価されるので終了する
p lazy_enum.class # => Enumerator::Lazy
p lazy_enum.select { |n| n.even? }.first(5)
# => [2, 4, 6, 8, 10]

# select が遅延評価されないので終了しない
enum = lazy_enum.eager
p enum.class # => Enumerator
p enum.select { |n| n.even? }.first(5)
