p Module.nesting
#=> []

module Foo
  p Module.nesting
  module Bar
    module Baz
      p Module.nesting
    end
  end
end
