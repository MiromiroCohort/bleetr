post '/users' do
  user = User.create(params[:user])
  session[:user_id] = user.id
  redirect '/', notice: "Thank you for signing up!"
end
