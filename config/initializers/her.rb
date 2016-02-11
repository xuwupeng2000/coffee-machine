BASE_URL = "http://10.3.5.33:8080/"

Her::API.setup url: BASE_URL do |c|
  # Request
  c.use Faraday::Request::UrlEncoded

  # Response
  c.use OrdsJsonParser
  # c.use Her::Middleware::DefaultParseJSON

  # Adapter
  c.use Faraday::Adapter::NetHttp
end
