<<<<<<< HEAD
require 'bcrypt'

class User < ActiveRecord::Base
  has_many :bleets
  has_many :follow_relationships
  has_many :followers, through: :follow_relationships, :foreign_key => 'follower_id'

include BCrypt

  def password
    @password ||= Password.new(password)
  end

  def password=(new_password)
    @password =Password.create(new_password)
    self.digest = @password
  end
end # End of User classbundke


=======

>>>>>>> Production_Branch
