require 'sinatra'
get '/' do
  erb :index
end

get '/partners' do
  markdown :partners, :layout_engine => :erb
end

get '/people' do
  markdown :people, :layout_engine => :erb
end

get '/research' do
  markdown :research, :layout_engine => :erb
end

get '/publications' do
  markdown :publications, :layout_engine => :erb
end

get '/contacts' do
  markdown :contacts, :layout_engine => :erb
end
