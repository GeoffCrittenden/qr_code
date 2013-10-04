#---------- GET ------------------

get '/' do
  erb :index
end

get '/restaurant' do
  erb :restaurant
end

get '/order/:id' do
  @order = Order.find(params[:id])
  erb :order
end

#---------- POST -----------------

post '/order' do
  order = Order.create
  order.update_attributes(restaurant_id: Restaurant.find_by_name(params[:restaurant]).id)
  redirect "/order/#{order.id}"
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