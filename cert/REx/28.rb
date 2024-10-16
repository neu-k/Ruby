require "date"

d = Date.today - Date.new(2015, 10, 1)
p d, d.class

s = Date.new(2015, 10, 1) - Date.today
p s, s.class
