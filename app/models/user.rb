class User < ActiveRecord::Base

  validates :name, presence: true
  validates :authentification_key, presence: true
end
