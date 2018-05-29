json.extract! notificacione, :id, :mensaje, :fecha, :id_tipo_notificacion, :created_at, :updated_at
json.url notificacione_url(notificacione, format: :json)
