require 'sinatra'
require 'json'
require 'net/http'

READ_KEY = 'qPEzjWJGfr3L'.freeze

get '/' do
  'Hello world!'
end

get '/language-detector' do
  do_request('uclassify', 'language-detector')
end

get '/sport-topics' do
  do_request('uclassify', 'sport-topics')
end

def do_request(username, classifier_name)
  content_type :json
  query = params[:text]
  endpoint = URI("https://api.uclassify.com/v1/#{username}/#{classifier_name}/classify")
  req = Net::HTTP::Post.new(endpoint, 'Content-Type' => 'application/json')
  req.add_field('Authorization', "Token #{READ_KEY}")
  req.body = { texts: [query] }.to_json
  res = Net::HTTP.start(endpoint.host, endpoint.port, use_ssl: true) do |http|
    http.request(req)
  end
  res.body
rescue => e
  e.message.to_json
end
