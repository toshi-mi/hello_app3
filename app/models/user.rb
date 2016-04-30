class User < ActiveRecord::Base
  has_many :microposts
  has_many :favs, dependent: :destroy
  has_many :fav_microposts, through: :favs, source: :micropost
  has_many :responses, dependent: :destroy
  has_many :response_microposts, through: :responses, source: :micropost
end
