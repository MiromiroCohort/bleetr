post '/session' do
  puts "hello"
  user = User.find_by_email(params[:user][:email])
  if user.password == params[:user][:password]
    session[:user_id] = user.id
    redirect "/"
  else
    redirect "/login"
  end
end



delete '/session' do
  puts "hi"
  session[:user_id] = nil
  redirect '/login'
end
