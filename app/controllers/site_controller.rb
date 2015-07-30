before '/login' do
  redirect '/' if session[:user_id]
end

before '/' do
  redirect '/login' unless session[:user_id]
end

get '/login' do
  erb :login
end

get '/' do
  #@flock = User.all
  @current_user = User.find_by id: session[:user_id]
  @bleets = Bleet.all.order :created_at DESC
  erb :index
end
