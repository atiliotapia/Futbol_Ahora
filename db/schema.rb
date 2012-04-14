# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120414053147) do

  create_table "ciudads", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.boolean  "sexomasculino"
    t.integer  "numerodocumento_identidad"
    t.date     "fecha_nacimiento"
    t.integer  "celular"
    t.integer  "clientetipo_id"
    t.integer  "documentotipo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientetipos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comentarios", :force => true do |t|
    t.text     "comentario"
    t.integer  "calificacion"
    t.integer  "cliente_id"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documentotipos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipos", :force => true do |t|
    t.integer  "evento_id"
    t.string   "nombre"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", :force => true do |t|
    t.string   "descripcion"
    t.string   "premio"
    t.integer  "cantidad_equipos"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.date     "fecha_inscripcion"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", :force => true do |t|
    t.string   "descripcion"
    t.string   "direccion"
    t.string   "direccion_google_maps"
    t.integer  "telefono"
    t.integer  "cliente_id"
    t.integer  "ciudad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publicidads", :force => true do |t|
    t.string   "titulo"
    t.text     "contenido"
    t.date     "fecha_inicio"
    t.date     "fecha_final"
    t.integer  "numero_click"
    t.integer  "tarifa"
    t.integer  "clientetipo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reserva_servicios", :force => true do |t|
    t.integer  "reserva_id"
    t.integer  "servicio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservas", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "local_id"
    t.date     "fecha_emision"
    t.time     "hora_inicio"
    t.time     "hora_final"
    t.boolean  "estado"
    t.integer  "validez_pre_reserva"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", :force => true do |t|
    t.boolean  "tiposervicio"
    t.string   "descripcion"
    t.integer  "local_id"
    t.integer  "tarifa_diurna"
    t.integer  "tarifa_nocturna"
    t.boolean  "promocion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "correo"
    t.string   "clave"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
