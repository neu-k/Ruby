class SampleApp
  def call(env)
    request = Rack::Request.new(env)
    body = <<~EOS
      env["QUERY_STRING"]: #{env["QUERY_STRING"]}
      request.params["ruby"]: #{request.params["ruby"]}
      request.params["rails"]: #{request.params["rails"]}
    EOS

    [200, {"content-type" => "text/plain"}, [body]]
  end
end
