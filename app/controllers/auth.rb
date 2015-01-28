get '/login' do
  erb :'/auth/_login'
end

get '/signup' do
  session.clear
  redirect '/'
end

