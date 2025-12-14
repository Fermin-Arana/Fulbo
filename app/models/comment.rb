class Comment < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :court
  validates :comment_text, presence: true
end
