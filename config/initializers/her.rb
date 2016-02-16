BASE_URL = "http://10.3.5.33:8080/"

Her::API.setup url: BASE_URL do |c|
  # Request
  c.use Faraday::Request::UrlEncoded

  # Other
  c.use Faraday::Response::Logger, Rails.logger

  # Response
  c.use OrdsJsonParser

  # Adapter
  c.use Faraday::Adapter::NetHttp
end
