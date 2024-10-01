require "csv"

read = CSV.read("sample.csv")
p read.class
p read
puts

readlines = CSV.readlines("sample.csv")
p readlines.class
p readlines
puts


table = CSV.readlines("sample.csv", headers: true)
p table.class
p table
puts
