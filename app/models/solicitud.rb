class Solicitud < ApplicationRecord
	belongs_to :login
	belongs_to :adjunto
	belongs_to :tipo_solicitude
end
