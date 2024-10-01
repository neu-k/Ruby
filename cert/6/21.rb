require "json"

array = [100, 500, 300, 200, 400]
File.open("dump.json", "w") do |f|
  JSON.dump(array, f)
end
