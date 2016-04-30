class Micropost < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :favs, dependent: :destroy
  has_many :fav_users, through: :favs, source: :user
  has_many :responses, dependent: :destroy
  has_many :response_users, through: :responses, source: :user
end
