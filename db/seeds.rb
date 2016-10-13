# type_array = ["question"]

users = 10.times do
  User.create( :username  => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :password   => 'password'
                )
end

questions = 2.times do
  Question.create( :title => Faker::Internet.user_name,
                    :body => Faker::Internet.email,
                    :user_id => rand(1..10)
                  )
end

answers = 10.times do
  Answer.create( :body => Faker::Internet.user_name,
                  :chosen => [true, false].sample,
                  :question_id => rand(1..2),
                  :user_id => rand(1..10)
                  )
end

comments = 20.times do
  Comment.create(:body => Faker::Internet.user_name,
                  :commentable_id => rand(1..12),
                  :commentable_type => ["question", "answer"].sample,
                  :user_id => rand(1..10)
                  )
end

votes = 20.times do
  Vote.create( :vote_type => ["up","down"].sample,
                  :votable_id => rand(1..32),
                  :votable_type => ["question", "answer", "comment"].sample,
                  :user_id => rand(1..10)
                  )
end
