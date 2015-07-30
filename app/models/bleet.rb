class Bleet < ActiveRecord::Base
  validates :bleet, length: {maximum: 140}
end