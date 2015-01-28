get '/login' do
  erb :'/auth/_login'
end

get '/signup' do
  erb :'/auth/_signup'
end

get '/signout' do
  session.clear
  redirect '/'
end

post '/login' do
 user = User.find_by(user_name: params[:user][:user_name])
  if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/'
  end
end

post '/signup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect "/"
  else
    redirect "/"
  end
end

