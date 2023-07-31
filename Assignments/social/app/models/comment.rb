class Comment < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  attribute :body, :text
  belongs_to :commentable, polymorphic: true
end
