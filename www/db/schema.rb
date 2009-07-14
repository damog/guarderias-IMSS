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

ActiveRecord::Schema.define(:version => 20090710011547) do

  create_table "localities", :force => true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nurseries", :force => true do |t|
    t.string   "cuentaConActa"
    t.string   "fechaFinSuspension"
    t.string   "nombreRz1"
    t.string   "causasSuspension"
    t.string   "fechaActualizacion"
    t.string   "inicioEsquema4"
    t.string   "sentidoDictamen"
    t.string   "inicioFechaInicio3"
    t.string   "ecRepresentanteLegal"
    t.string   "inicioCveGuarderia2"
    t.string   "inicioEsquema2"
    t.string   "inicioEsquema1"
    t.string   "uid"
    t.string   "fechaProbableVerificacion"
    t.string   "nombreRz"
    t.string   "directora"
    t.string   "inscritos"
    t.string   "ecmSocios"
    t.string   "inicioEsquema3"
    t.string   "identificador"
    t.string   "ecmRepresentanteLegal"
    t.string   "nombreRz2"
    t.string   "capacidad"
    t.string   "razonSocialCompleta"
    t.string   "detalle_sociosOrigFundPrestServ"
    t.string   "detalle_repreLegalOriginarioPrestServ"
    t.string   "detalle_inicioOperacion"
    t.string   "detalle_vigenciaTermino"
    t.string   "detalle_vigenciaInicio"
    t.string   "detalle_sociosPrestServicio"
    t.string   "detalle_repreLegalPrestServicios"
    t.string   "detalle_capacidadInstalada"
    t.string   "detalle_esquemaContratacion"
    t.string   "detalle_cuotaUnitaria"
    t.string   "detalle_repreLegalIMSS"
    t.string   "detalle_prestadorServicios"
    t.string   "detalle_areaAdminRespContrato"
    t.string   "detalle_areaSolicitanteContrat"
    t.string   "detalle_directora"
    t.string   "inicioCveGuarderia3"
    t.string   "fechaUltimaVerificacion"
    t.string   "fechaCierre"
    t.string   "domicilio"
    t.string   "inicioFechaInicio2"
    t.string   "status"
    t.string   "inicioFechaInicio4"
    t.string   "localidad"
    t.string   "inicioCveGuarderia1"
    t.string   "ecSocios"
    t.string   "decision"
    t.string   "carga"
    t.string   "inicioCveGuarderia4"
    t.string   "fechaInicioSuspension"
    t.string   "resultadosVerificacion"
    t.string   "inicioFechaInicio1"
    t.string   "reubicar"
    t.string   "delegacion"
    t.string   "comentariosDelegado"
    t.string   "usuarioActualizacion"
    t.integer  "locality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
