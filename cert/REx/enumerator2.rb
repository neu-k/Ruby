p [1, 2, 3, 4, 5].enum_for(:each_slice, 2)
#=> #<Enumerator: [1, 2, 3, 4, 5]:each_slice(2)>

p [1, 2, 3, 4, 5].each_slice(2)
#=> #<Enumerator: [1, 2, 3, 4, 5]:each_slice(2)>
