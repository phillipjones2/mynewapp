class Actor < ActiveRecord::Base
  has_many :parts
  has_many :movies, through: :parts

  attr_accessor :role

end
