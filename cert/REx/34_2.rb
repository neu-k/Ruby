class C
end

def C._singleton
  self
end

p C._singleton
p C._singleton.class
p C._singleton.singleton_class?

p C.singleton_methods
#=> [:_singleton]
