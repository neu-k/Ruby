class C
end

class << C
  def _singleton
    self
  end
end

p C._singleton
p C._singleton.class
p C._singleton.singleton_class?
