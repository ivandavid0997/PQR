class Role < ApplicationRecord
	has_many :logins
	belongs_to :area
end
