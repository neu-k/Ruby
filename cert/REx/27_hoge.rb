module Enumerable
  def with_prefix(prefix)
    return to_enum(hoge, prefix) { size } unless block_given?

    each do |char|
      yield "#{prefix} #{char}"
    end
  end
end

[1, 2, 3, 4, 5].with_prefix("Awesome") {|char|
  puts char
}
#=> block_given? がtrueになるため to_enum は実行されず、hogeは評価されない

# [1, 2, 3, 4, 5].with_prefix("Awesome")
#=> undefined local variable or method `hoge' for [1, 2, 3, 4, 5]:Array (NameError)
