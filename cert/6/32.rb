require "uri"

splitted = URI.split "http://www.ruby-lang.org/ja/man/html/index.html"

p splitted.class
p splitted