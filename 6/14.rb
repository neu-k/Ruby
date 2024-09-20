require "yaml"

colors = ["Red", "Green", "Blue"]
yaml_string = YAML.dump(colors)
p yaml_string
p yaml_string.class


puts


parsed_yaml = YAML.load(yaml_string)
p parsed_yaml
p parsed_yaml.class
