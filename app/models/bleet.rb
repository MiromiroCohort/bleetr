class Bleet < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
end
=======
  validates :bleet, length: {maximum: 140}
end
>>>>>>> Production_Branch
