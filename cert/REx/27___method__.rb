module Enumerable
  def with_prefix(prefix)
    return to_enum(__method__, prefix) { size } unless block_given?

    each do |char|
      yield "#{prefix} #{char}"
    end
  end
end

[1, 2, 3, 4, 5].with_prefix("Awesome")
