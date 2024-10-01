require "net/http"

print Net::HTTP.get("www.example.com", "/index.html")
