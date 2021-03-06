class MovieLocation < ActiveRecord::Base
	belongs_to :movie 
	belongs_to :location
	has_many   :user_movie_locations
	scope :booking_not_started, -> { where(started: false)}
end
