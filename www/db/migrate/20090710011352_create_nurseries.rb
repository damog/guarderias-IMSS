class CreateNurseries < ActiveRecord::Migration
  def self.up
    create_table :nurseries do |t|
      
      t.string :capacidad
      t.string :carga
      t.string :causasSuspension
      t.string :comentariosDelegado
      t.string :cuentaConActa
      t.string :decision
      t.string :delegation_id
      t.string :detalle_areaAdminRespContrato
      t.string :detalle_areaSolicitanteContrat
      t.string :detalle_capacidadInstalada
      t.string :detalle_cuotaUnitaria
      t.string :detalle_directora
      t.string :detalle_esquemaContratacion
      t.string :detalle_inicioOperacion
      t.string :detalle_inicioOperacionCorregido
      t.string :detalle_prestadorServicios
      t.string :detalle_repreLegalIMSS
      t.string :detalle_repreLegalOriginarioPrestServ
      t.string :detalle_repreLegalPrestServicios
      t.string :detalle_sociosOrigFundPrestServ
      t.string :detalle_sociosPrestServicio
      t.string :detalle_vigenciaInicio
      t.string :detalle_vigenciaTermino
      t.string :directora
      t.string :domicilio
      t.string :ecmRepresentanteLegal
      t.string :ecmSocios
      t.string :ecRepresentanteLegal
      t.string :ecSocios
      t.string :fechaActualizacion
      t.string :fechaCierre
      t.string :fechaFinSuspension
      t.string :fechaInicioSuspension
      t.string :fechaProbableVerificacion
      t.string :fechaUltimaVerificacion
      t.string :identificador
      t.string :inicioCveGuarderia1
      t.string :inicioCveGuarderia2
      t.string :inicioCveGuarderia3
      t.string :inicioCveGuarderia4
      t.string :inicioEsquema1
      t.string :inicioEsquema2
      t.string :inicioEsquema3
      t.string :inicioEsquema4
      t.string :inicioFechaInicio1
      t.string :inicioFechaInicio2
      t.string :inicioFechaInicio3
      t.string :inicioFechaInicio4
      t.string :inscritos
      t.string :locality_id
      t.string :nombreRz
      t.string :nombreRz1
      t.string :nombreRz2
      t.string :razonSocialCompleta
      t.string :resultadosVerificacion
      t.string :reubicar
      t.string :sentidoDictamen
      t.string :status
      t.string :uid
      t.string :usuarioActualizacion

      
      t.integer :locality_id

      t.timestamps
    end
  end

  def self.down
    drop_table :nurseries
  end
end
