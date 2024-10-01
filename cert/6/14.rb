require "yaml"

colors = ["Red", "Green", "Blue"]
yaml_string = YAML.dump(colors)
puts "Class: #{yaml_string.class}", yaml_string


puts



parsed_yaml = YAML.load(yaml_string)
puts "Class: #{parsed_yaml.class}", parsed_yaml
