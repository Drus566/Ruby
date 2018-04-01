require 'net/http'

# web_proxy = Net::HTTP::Proxy('your.proxy.hostname.or.ip', 8080)

# url = URI.parse('http://www.rubyinside.com/test.txt')

# web_proxy.start(url.host, url.port) do |http|
#     req = Net::HTTP::Get.new(url.path)
#     puts http.request(req).body
# end

# response = web_proxy.get_response(url)
# puts response.body

# case proxy or without him

http_class = ARGV.firts ? Net::HTTP:Proxy(ARGV[0], ARGV[1]) : Net::HTTP
url = URI.parse('http://www.rubyinside.com/test.txt')

response = http_class.get_response(url)
puts response.body