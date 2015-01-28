get '/' do
  if current_user
    erb :'main'
  else
    erb :'index'
  end
end
