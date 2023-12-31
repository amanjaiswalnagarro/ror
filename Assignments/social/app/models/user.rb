class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :blogs, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :comments, as: :commentable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :admin, inclusion: { in: [true, false] }

end
