class User < ActiveRecord::Base
  has_many :bleets
  has_many :follow_relationships
  has_many :followers, through: :follow_relationships, :foreign_key => 'follower_id'
end
