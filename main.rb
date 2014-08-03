require 'sinatra'
require 'sinatra/reloader'
require './converter_class'

set :public_folder, File.dirname(__FILE__)

get '/' do
  erb	:form
end

post '/html' do
	plaintext = params['plaintext']

	converter = Converter.new
	html = converter.convert_paragraph(plaintext)

	html = CGI.escapeHTML html

end

get '/html' do
	erb	:html
end



