class SampleApp
  def call(env)
    [200, {"content-type" => "text/plain"}, ["Hello, Rack!!!"]]
  end
end
