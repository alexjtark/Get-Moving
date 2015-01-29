get '/item/:id/edit' do |id|
  @item = Item.find(id)
    if @item.user.id == current_user.id
      erb :'/item/edit'
    else
      redirect '/'
  end
end

post '/item/new' do
  item = Item.new(params[:item])
  if item.save
    redirect "/box/#{item.box.id}"
  end
end

put '/item/:id' do |id|
  item = Item.find(id)
  item.update(params[:item])
  redirect "/box/#{item.box.id}"
end

delete '/item/:id' do |id|
  item = Item.find(id)
  box = item.box
  item.destroy
  redirect "/box/#{box.id}"
end
