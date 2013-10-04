#---------- GET ------------------

get '/' do
  erb :index
end

get '/code/:order' do
  url_encoded_text = params[:order]
  pixels = 350
  @qr_code = "http://api.qrserver.com/v1/create-qr-code/?data=#{url_encoded_text}&size=#{pixels}x#{pixels}&bgcolor=D3DEED&color=27466E"
  # if request.xhr?
  #   erb :qr_code, layout: false
  # else
    erb :qr_code
  # end
end

# get '/restaurant' do
#   erb :restaurant
# end

get '/order/:id' do
  @order = Order.find(params[:id])
  @restaurant = Restaurant.find(@order.restaurant_id)
  erb :order
end

#---------- POST -----------------

post '/order' do
  order = Order.create
  order.update_attributes(restaurant_id: Restaurant.find_by_name(params[:restaurant]).id)
  if request.xhr?
    erb :_order, layout: false
  else
    redirect "/order/#{order.id}"
  end
end

post '/generate' do
  user = User.find_or_create_by_name(params[:order][:name])
  @order = Order.find(params[:order][:id])
  @order.user_id = user.id
  params[:order].each_pair { |key,item| 
    if key == "id" || key == "name"
      next
    else
      @order.items << Item.find(item)
    end
  }
  order_ary = []
  @order.items.each { |item| order_ary << item.name }
  order_string = "#{Restaurant.find(@order.restaurant_id).name},#{@order.id},#{User.find(@order.user_id).name}," + order_ary.join(',')
  puts order_ary
  puts order_string
  redirect "/code/#{order_string}"
end

post '/qr_code' do
  url_encoded_text = params[:text]
  pixels = 350
  @qr_code = "http://api.qrserver.com/v1/create-qr-code/?data=#{url_encoded_text}&size=#{pixels}x#{pixels}&bgcolor=D3DEED&color=27466E"
  if request.xhr?
    erb :qr_code, layout: false
  else
    erb :qr_code
  end
end