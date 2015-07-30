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
  @flock = User.all
  @current_user = User.find_by id: session[:user_id]
  @bleets = Bleet.all.order('created_at DESC')
  erb :test_index
end




post '/follow' do
end

get '/flock' do
  @flock_page = true
  flock = User.first.followers
  #flock = User.find_by(id: session[:user_id]).followers
  @bleets_to_print = []
    flock.each do |sheep|
      sheep.bleets.each do |bleet|
        @bleets_to_print << bleet
      end
    end
  @bleets_to_print.sort_by!{|bleet| bleet.created_at}
  @bleets_to_print.reverse!
  #find_by user_id: 1 #session[:user_id]
  puts @flock
  erb :flock
end

get '/paddock' do
  @paddock_page = true
  @bleets_to_print = []
    User.all.each do |sheep|
      sheep.bleets.each do |bleet|
        @bleets_to_print << bleet
      end
    end
  @bleets_to_print.sort_by!{|bleet| bleet.created_at}
  @bleets_to_print.reverse!

  erb :paddock
end

get '/1' do
#get '/:id'
  @single_user_page = true
  @bleets_to_print = []
  User.find_by(id: 1).bleets.each do |bleet|
  #User.find_by(id: session[:user_id]).bleets.each do |bleet|
    @bleets_to_print << bleet
  end
  erb :single_user
end
