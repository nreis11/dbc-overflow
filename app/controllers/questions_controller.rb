get '/questions/?' do
  erb :'questions/index'
end

post '/questions/?' do
  # new question logic here
  redirect "/questions/#{@question.id}"
end

get '/questions/new/?' do

  erb :'questions/new'
end

get '/questions/:id/?' do

  erb :'questions/show'
end

get '/questions/:id/edit/?' do

  erb :'questions/edit'
end

put '/questions/:id/?' do
  redirect "/questions/#{@question.id}"
end

delete '/questions/:id' do
  # destroy question in AR
  redirect '/questions'
end
