# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090716174743) do

  create_table "delegations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delegations", ["name"], :name => "index_delegations_on_name"

  create_table "localities", :force => true do |t|
    t.string   "name"
    t.integer  "delegation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "localities", ["delegation_id"], :name => "index_localities_on_delegation_id"
  add_index "localities", ["name"], :name => "index_localities_on_name"

  create_table "nurseries", :force => true do |t|
    t.string   "capacidad"
    t.string   "carga"
    t.string   "causasSuspension"
    t.string   "comentariosDelegado"
    t.string   "cuentaConActa"
    t.string   "decision"
    t.string   "delegation_id"
    t.string   "detalle_areaAdminRespContrato"
    t.string   "detalle_areaSolicitanteContrat"
    t.string   "detalle_capacidadInstalada"
    t.string   "detalle_cuotaUnitaria"
    t.string   "detalle_directora"
    t.string   "detalle_esquemaContratacion"
    t.string   "detalle_inicioOperacion"
    t.string   "detalle_inicioOperacionCorregido"
    t.string   "detalle_prestadorServicios"
    t.string   "detalle_repreLegalIMSS"
    t.string   "detalle_repreLegalOriginarioPrestServ"
    t.string   "detalle_repreLegalPrestServicios"
    t.text     "detalle_sociosOrigFundPrestServ"
    t.text     "detalle_sociosPrestServicio"
    t.string   "detalle_vigenciaInicio"
    t.string   "detalle_vigenciaTermino"
    t.string   "directora"
    t.string   "domicilio"
    t.string   "ecmRepresentanteLegal"
    t.string   "ecmSocios"
    t.string   "ecRepresentanteLegal"
    t.string   "ecSocios"
    t.string   "fechaActualizacion"
    t.string   "fechaCierre"
    t.string   "fechaFinSuspension"
    t.string   "fechaInicioSuspension"
    t.string   "fechaProbableVerificacion"
    t.string   "fechaUltimaVerificacion"
    t.string   "identificador"
    t.string   "inicioCveGuarderia1"
    t.string   "inicioCveGuarderia2"
    t.string   "inicioCveGuarderia3"
    t.string   "inicioCveGuarderia4"
    t.string   "inicioEsquema1"
    t.string   "inicioEsquema2"
    t.string   "inicioEsquema3"
    t.string   "inicioEsquema4"
    t.string   "inicioFechaInicio1"
    t.string   "inicioFechaInicio2"
    t.string   "inicioFechaInicio3"
    t.string   "inicioFechaInicio4"
    t.string   "inscritos"
    t.string   "locality_id",                           :limit => 4
    t.string   "nombreRz"
    t.string   "nombreRz1"
    t.string   "nombreRz2"
    t.string   "razonSocialCompleta"
    t.string   "resultadosVerificacion"
    t.string   "reubicar"
    t.string   "sentidoDictamen"
    t.string   "status"
    t.string   "uid"
    t.string   "usuarioActualizacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nurseries", ["delegation_id"], :name => "index_nurseries_on_delegation_id"
  add_index "nurseries", ["identificador"], :name => "index_nurseries_on_identificador"
  add_index "nurseries", ["locality_id"], :name => "index_nurseries_on_locality_id"
  add_index "nurseries", ["uid"], :name => "index_nurseries_on_uid"

end
