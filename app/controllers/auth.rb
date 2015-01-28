get '/login' do
  if request.xhr?
    erb :'/auth/_login', layout: false
  else
    erb :'/auth/_login'
  end
end

get '/signup' do
  if request.xhr?
    erb :'/auth/_signup', layout: false
  else
    erb :'/auth/_signup'
  end
end

get '/signout' do
  session.clear
  redirect '/'
end


get '/main' do
  erb :main
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    erb :'/main'
  else
    erb :'/auth/_login'
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

