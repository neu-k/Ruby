module M
  def method_missing(id, *args)
    puts "M#method_missing"
  end
end
class A
  include M
  def method_missing(id, *args)
    puts "A#method_missing"
  end
end
class B < A
  class << self
    def method_missing(id, *args)
      puts "B.method_missing"
    end
  end
end

p B.ancestors
#=> [B, A, M, Object, Kernel, BasicObject]

puts B.ancestors
#=> B.method_missing
#=> B
#=> A
#=> M
#=> Object
#=> Kernel
#=> BasicObject
