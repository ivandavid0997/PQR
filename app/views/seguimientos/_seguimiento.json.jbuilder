json.extract! seguimiento, :id, :descripcion, :fecha, :hora, :id_tipo_seguimiento, :created_at, :updated_at
json.url seguimiento_url(seguimiento, format: :json)
