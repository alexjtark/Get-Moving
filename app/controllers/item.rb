get '/item/:id/edit' do |id|
  @item = Item.find(id)
  erb :'/item/edit'
end


post '/item/new' do
  item = Item.new(params[:item])
  # item[:box_id] = @box.id
  if item.save
    erb :main
  end
end

delete '/item/:id' do |id|
  item = Item.find(id)
  item.destroy
  redirect '/'
end
