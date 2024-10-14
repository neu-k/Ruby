p "abc".enum_for(:each_byte)
#=> #<Enumerator: "abc":each_byte>

p "abc".each_byte
#=> #<Enumerator: "abc":each_byte>
