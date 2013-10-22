get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/roll' do
  @number = rand(6)+1

  if request.xhr?
    "Roll was: " + @number.to_s
  else
    erb :roll
  end
end
