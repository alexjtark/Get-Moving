get '/box/all' do
  erb :'/box/index'
end

get '/box/new' do
  erb :'/box/new'
end

get '/box/:id' do |id|
  box = Box.find(id)
  erb
end