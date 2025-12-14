class Owner < Person
  has_many :courts, foreign_key: owner_id, inverse_of: :owner, dependent: :destroy
end
