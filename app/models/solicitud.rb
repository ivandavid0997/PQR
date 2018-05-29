class Solicitud < ApplicationRecord
	belongs_to :login
	belongs_to :adjunto
end
