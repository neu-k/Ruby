class Morning
  def call(env)
    response = Rack::Response.new("Good morning!!", 200, {"content-type" => "text/plain"})
    response.finish
  end
end
