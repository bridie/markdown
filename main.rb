require 'sinatra'
require 'sinatra/reloader'
require 'json'
require './converter_class'
also_reload './converter_class.rb'

set :public_folder, File.dirname(__FILE__)

get '/' do
  erb	:form
end

post '/' do

	plaintext = params['plaintext']

	converter = Converter.new
	html = converter.convert_all_text(plaintext)

	{ :html => html}.to_json

end



