get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/qr_code' do
  url_encoded_text = params[:text]
  pixels = params[:pixels]
  @qr_code = "http://api.qrserver.com/v1/create-qr-code/?data=#{url_encoded_text}&size=#{pixels}x#{pixels}"
  if request.xhr?
    erb :qr_code, layout: false
  else
    erb :qr_code
  end
end