$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'sinatra'
require 'sass'
require 'yaml'
require 'helpers'

before do
  response.headers['X-UA-Compatible'] = 'IE=edge,chrome=1'
  @data = YAML.load_file('data.yml')
end

get '/css/:name.css' do |name|
  content_type 'text/css', charset: 'utf-8'
  scss name.to_sym, layout: false, views: "#{settings.root}/public/css"
end

get '/' do
  redirect '/?chart1=0&chart2=1' if params.empty?

  @chart1_data = @data['charts'][params[:chart1].to_i]
  @chart2_data = @data['charts'][params[:chart2].to_i]

  erb :index
end