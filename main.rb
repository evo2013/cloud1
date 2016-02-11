require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'
require 'sass'

get('/styles.css'){ scss :styles }

get '/' do
	@title="B2B Advertising"
  slim :home
end

get '/photos' do
	@title = "Tourism"
  slim :photos
end

get '/contact' do
	@title = "Contact Us"
	slim :contact
end

not_found do
	@title = "404 Error"
	slim :not_found
end