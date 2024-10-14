[1, 2, 3, 4, 5].enum_for(:each_slice, 2).each_with_index do |e, i|
  p [e, i]
end
