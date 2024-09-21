require "csv"

CSV.open("sample.csv") do |csv|
  p csv
  p csv.class

  puts

  csv.each do |row|
    p row
  end
end
