class User < Person
  has_may :comments, foreign_key: :user_id, dependent: :destroy
end
