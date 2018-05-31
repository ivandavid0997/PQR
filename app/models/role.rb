class Role < ApplicationRecord
	has_many :users
	belongs_to :area
end
