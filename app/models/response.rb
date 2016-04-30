class Response < ActiveRecord::Base
  has_many :microposts
  has_many :users
end
