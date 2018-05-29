json.extract! tipo_notificacione, :id, :nombre, :descripcion, :icono, :created_at, :updated_at
json.url tipo_notificacione_url(tipo_notificacione, format: :json)
