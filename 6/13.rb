require "yaml"

yaml_stream = YAML.load_stream(File.open("10.yaml"))
p yaml_stream
