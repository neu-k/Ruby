require "yaml"

yaml_data1 = <<-YAML_EOT
- Red
- Green
- Blue
---
- Yellow
- Pink
- White
YAML_EOT

parsed_data1 = YAML.load(yaml_data1)
p parsed_data1
p parsed_data1.class


puts


yaml_data2 = <<-YAML_EOT
A: aaa
B:
  B1: bbb1
  B2: bbb2
C: ccc
YAML_EOT

parsed_data2 = YAML.load(yaml_data2)
p parsed_data2
p parsed_data2.class
