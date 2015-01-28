
post '/item/new' do
  item = Item.new(params[:item])
  # item[:box_id] = @box.id
  if item.save
    erb :main
  end
end