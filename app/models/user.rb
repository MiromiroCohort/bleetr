require 'bcrypt'

class User < ActiveRecord::Base
include BCrypt

  def password
    @password ||= Password.new(password)
  end

  def password=(new_password)
    @password =Password.create(new_password)
    self.digest = @password
  end
end # End of User classbundke

