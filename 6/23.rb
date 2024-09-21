require "csv"

CSV.open("sample_write.csv", "w") do |row|
  row << ["abc", "def", "ghijk"]
  row << ["lmn", "opq", "rstuv"]
end

