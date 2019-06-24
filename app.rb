require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/info' do
		erb :info
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		name = params[:name]
		"Goodbye #{name}"
	end

	get '/date' do
		"#{Time.now}"
	end
end