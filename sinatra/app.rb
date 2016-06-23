require 'sinatra'

configure :development do
  set :bind, '0.0.0.0'
  set :port, 3000
end

get '/' do
  "Hi, this is the homepage with Sinatra"
end

get '/contact' do
  "Welcome to the contact us page"
end

get '/:name' do
  "My name is #{params[:name]}"
end
