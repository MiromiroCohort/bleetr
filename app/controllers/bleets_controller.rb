require 'glorify'

before '/bleets*' do
  redirect '/login' unless session[:user_id]
end

post '/bleets' do
  @user = User.find(session[:user_id])
  @user.bleets << Bleet.create(params[:bleet])
  redirect '/'
end

delete 'bleets/:id' do
  bleet = Bleet.find params[:id]
  bleet.destroy
  redirect '/'
end
