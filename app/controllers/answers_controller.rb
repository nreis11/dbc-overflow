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
  question = Question.find(params[:question_id])
  p question
  # answer = Answer.all
  user_id = session[:id]
  new_answer = question.answers.create(body: params[:body], user_id: user_id)
  redirect "/"
end

