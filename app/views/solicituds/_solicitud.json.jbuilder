json.extract! solicitud, :id, :descripcion, :fecha_solicitud, :hora, :idtipo_solicitud, :id_usuario, :id_documento, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
