json.extract! user, :id, :nombre, :apellido, :telefono, :direccion, :email, :tipo_identificacion, :identificacion, :usuario, :contrasena, :created_at, :updated_at
json.url user_url(user, format: :json)
