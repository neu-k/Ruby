"abc".enum_for(:each_byte).each_with_index do |e, i|
  puts "#{i}: #{e}"
end
