require "yaml"

colors1 = ["Red", "Green", "Blue"]
colors2 = ["Yellow", "Pink", "White"]

puts YAML.dump_stream(colors1, colors2)
