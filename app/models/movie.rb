class Movie < ActiveRecord::Base
  has_many :parts
  has_many :actors, through: :parts, extend: ActorRole
  has_many :movie_quotes


end
