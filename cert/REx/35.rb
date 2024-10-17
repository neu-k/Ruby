class C
end

p C.singleton_class.singleton_class.singleton_class.singleton_class
#=> #<Class:#<Class:#<Class:#<Class:C>>>>
