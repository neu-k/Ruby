class Foo
  def initialize name
    puts "initialize Foo"
    @name = name
  end
end

class Bar < Foo
  def initialize name, pass
    puts "initialize Bar"
    super name
    @pass = pass
  end
end

it = Bar.new("myname", "0500")
p it
