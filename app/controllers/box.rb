get '/box/index' do
  erb :'/box/index'
end

get '/box/new' do
  erb :'/box/new'
end

get '/box/:id' do |id|
  @box = Box.find(id)
  erb :'/box/show'
end

post '/box/new' do
  box = Box.new(params[:box])
  box[:user_id] = current_user.id
  if box.save
    redirect '/'
  else
    redirect '/box/new'
  end
end

put '/box/:id' do |id|
  box = Box.find(id)
  box.update(params[:box])
  redirect "/box/#{box.id}"
end

delete '/box/:id' do |id|
  box = Box.find(id)
  box.destroy
  redirect "/"
end