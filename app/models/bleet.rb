class Bleet < ActiveRecord::Base
  belongs_to :user
  validates :bleet, length: {maximum: 140}
end

