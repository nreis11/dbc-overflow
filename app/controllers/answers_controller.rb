get '/answers' do
  @answers = Answer.all
  redirect '/'
end

get '/questions/:question_id/answers/' do
  "Hello World"
end

get '/questions/:question_id/answers/new' do
  @answers = Answer.all
  erb :'answers/new'
end

post '/questions/:question_id/answers' do
  @question = Question.all
  @answer = Answer.all
  user_id = session[:id]
  new_answer = Answer.create(body: params[:body], question_id: params[:question_id], user_id: user_id)
  redirect "/"
end

