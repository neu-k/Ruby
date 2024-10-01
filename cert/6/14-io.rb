require "yaml"

colors = ["Red", "Green", "Blue"]
File.open("sample.yaml", "w+") do |f|
  YAML.dump(colors, f)
end

