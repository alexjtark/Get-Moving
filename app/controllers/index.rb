get '/' do
  if current_user
    redirect "/main"
  else
    erb :index
  end
end
