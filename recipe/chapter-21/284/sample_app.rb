require "erb"

class SampleApp
  def call(env)
    request = Rack::Request.new(env)
    html = ERB.new(File.read("index.html.erb"), trim_mode: "-")
      .result_with_hash(
        name: request.params["name"],
        ip: request.ip,
        user_agent: request.user_agent
      )

    response = Rack::Response.new(html)
    response.content_type = "text/html"
    response.finish
  end
end
