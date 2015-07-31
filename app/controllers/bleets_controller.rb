require 'glorify'

before '/bleets*' do
  redirect '/login' unless session[:user_id]
end

post '/bleets' do
  params
  bleet = Bleet.create(params[:bleet])
  bleet.user_id.to_s
  #redirect '/'
end

delete 'bleets/:id' do
  bleet = Bleet.find params[:id]
  bleet.destroy
  redirect '/'
end
