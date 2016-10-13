# type_array = ["question"]

users = 10.times.map do
  User.create!( :username  => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :password   => 'password'
                )
end

questions = 2.times.map do
  Question.create!( :title => Faker::Hipster.sentence,
                    :body => Faker::Hipster.paragraph,
                    :user_id => rand(1..10)
                  )
end

answers = 10.times.map do
  Answer.create!( :body => Faker::Hipster.paragraph,
                  :chosen => [true, false].sample,
                  :question_id => rand(1..2),
                  :user_id => rand(1..10)
                  )
end

comments = 20.times.map do
  Comment.create!(:body => Faker::Hipster.paragraph,
                  :commentable_id => rand(1..12),
                  # :commentable_type =>
                  :user_id => rand(1..10)
                  )
end

votes = 20.times.map do
  Vote.create!( :type => ["up","down"].sample,
                  :votable_id => rand(1..32),
                  # :votable_type =>
                  :user_id => rand(1..10)
                  )
end
