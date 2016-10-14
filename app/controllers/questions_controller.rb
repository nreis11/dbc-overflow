get '/questions/?' do
  @questions = Question.all
  erb :'questions/index'
end

post '/questions/?' do
  p params
  user_id = session[:id]
  question = Question.create(title: params[:title], body: params[:body], user_id: user_id)
  p question
  redirect "/questions/#{question.id}"
end

get '/questions/new/?' do

  erb :'questions/new'
end

get '/questions/:id/?' do
  @question = Question.find(params[:id])
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
