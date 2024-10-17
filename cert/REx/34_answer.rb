class C
  def self._singleton
    class << C
      self
    end
  end
end

p C._singleton
p C._singleton.class
p C._singleton.singleton_class?
