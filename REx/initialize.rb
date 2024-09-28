class S
  @@val = 0
  def initialize
    @@val += 1
  end
end

class C < S
  class << C
    @@val += 1
  end
end

p C.object_id   #=> 60
p C.object_id   #=> 60

p C.new.object_id   #=> 80
p C.new.object_id   #=> 100

p C.object_id   #=> 60

S.new
S.new

p C.class_variable_get(:@@val)    #=> 5
