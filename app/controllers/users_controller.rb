post '/users' do
  # # params[:user]
  # # params[:user][:id]
  # @user = User.new(params[:user])
  # if user.valid?
  # end
  # @user.save!

  user = User.create(params[:user])
  session[:user_id] = user.id
  # user = User.create(:name => params[:user][:name], :email => params[:user][:email],:password => params[:user][:password])
  redirect '/'
end
