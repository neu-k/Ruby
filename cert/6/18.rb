require "json"

json = <<-DATA
["Red", "Green", "Blue"]
DATA

# procには解釈されたオブジェクトから順番に渡されるため、Red、Green、Blue、最後に配列が渡される
JSON.load(json, lambda{|x| p x})
