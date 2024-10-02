class SampleApp
  def call(env)
    request = Rack::Request.new(env)
    text = 
      if request.path == "/ja"
        "おはよう、Rack ^-^"
      else
        "Hello, Rack :D"
      end

    response = Rack::Response.new(
      text, 200, {"content-type" => "text/plain"}
    )

    response.cache_control = "max-age=300"
    response.add_header "x-test-header", "foobar"
    response.finish
  end
end
