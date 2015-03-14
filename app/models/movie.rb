class Movie < ActiveRecord::Base
	searchkick
	belongs_to :user
	has_many :reviews

end
