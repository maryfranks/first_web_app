require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/gallery' do
  erb :gallery 
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get '/favorites' do
  @fav_links = ['http://www.smittenkitchen.com', 'http://www.wonderpens.ca', 'http://www.ravelry.com', 'http://github.com', 'http://questionablecontent.net/']
  erb :favorites
end
