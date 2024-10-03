require "rack"
require "./morning"
require "./evening"

map "/" do
  run Morning.new
end

map "/evening" do
  run Evening.new
end

map "/secret" do
  use Rack::Auth::Basic do |username, password|
    username_verified = Rack::Utils.secure_compare(
      Digest::SHA256.digest("foo"),
      Digest::SHA256.digest(username)
    )

    password_verified = Rack::Utils.secure_compare(
      Digest::SHA256.digest("bar"),
      Digest::SHA256.digest(password)
    )

    username_verified && password_verified
  end

  run Evening.new
end
