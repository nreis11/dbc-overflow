

get '/questions/:question_id/comments/new' do
  @questions = Question.all
  erb :'comments/new'
end

post '/questions/:question_id/comments' do
  p params
  question = Question.find("#{params[:question_id]}".to_i)
  user_id = session[:id]
  new_comment = question.comments.create(body: params[:body], user_id: user_id)
  p new_comment
  redirect "/"
  "hi"
end

