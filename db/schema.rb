# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_05_29_153058) do

  create_table "adjuntos", force: :cascade do |t|
    t.string "nombre"
    t.string "extension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade do |t|
    t.string "nombre_area"
    t.integer "telefono_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_logins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_logins_on_reset_password_token", unique: true
  end

  create_table "notificaciones", force: :cascade do |t|
    t.text "mensaje"
    t.datetime "fecha"
    t.integer "id_tipo_notificacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parametros", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "tiempo_respuesta"
    t.string "medio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permisos", force: :cascade do |t|
    t.string "tipo_permiso"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "nombre_rol"
    t.integer "id_area"
    t.integer "id_usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seguimientos", force: :cascade do |t|
    t.text "descripcion"
    t.date "fecha"
    t.time "hora"
    t.integer "id_tipo_seguimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicituds", force: :cascade do |t|
    t.text "descripcion"
    t.date "fecha_solicitud"
    t.time "hora"
    t.integer "idtipo_solicitud"
    t.integer "id_usuario"
    t.integer "id_documento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "login_id"
    t.index ["login_id"], name: "index_solicituds_on_login_id"
  end

  create_table "tipo_notificaciones", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "icono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_seguimientos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_solicitudes", force: :cascade do |t|
    t.string "nombre_tipo"
    t.integer "id_parametros"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "telefono"
    t.string "direccion"
    t.string "email"
    t.string "tipo_identificacion"
    t.integer "identificacion"
    t.string "usuario"
    t.integer "contrasena"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
