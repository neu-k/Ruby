class Evening
  def call(env)
    response = Rack::Response.new("Good evening;P", 200, {"content-type" => "text/plain"})
    response.finish
  end
end
