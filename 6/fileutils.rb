require "fileutils"

FileUtils.cp("sample.csv", "destination_file", verbose: true, noop: true)
FileUtils.mkdir("example_dir", verbose: true, noop: true)

p FileUtils.pwd
FileUtils.cd("../", verbose: true)
p FileUtils.getwd
