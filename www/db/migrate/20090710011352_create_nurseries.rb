class CreateNurseries < ActiveRecord::Migration
  def self.up
    create_table :nurseries do |t|
      t.string :cuentaConActa
      t.string :fechaFinSuspension
      t.string :nombreRz1
      t.string :causasSuspension
      t.string :fechaActualizacion
      t.string :inicioEsquema4
      t.string :sentidoDictamen
      t.string :inicioFechaInicio3
      t.string :ecRepresentanteLegal
      t.string :inicioCveGuarderia2
      t.string :inicioEsquema2
      t.string :inicioEsquema1
      t.string :uid
      t.string :fechaProbableVerificacion
      t.string :nombreRz
      t.string :directora
      t.string :inscritos
      t.string :ecmSocios
      t.string :inicioEsquema3
      t.string :identificador
      t.string :ecmRepresentanteLegal
      t.string :nombreRz2
      t.string :capacidad
      t.string :razonSocialCompleta
      t.string :detalle_sociosOrigFundPrestServ
      t.string :detalle_repreLegalOriginarioPrestServ
      t.string :detalle_inicioOperacion
      t.string :detalle_vigenciaTermino
      t.string :detalle_vigenciaInicio
      t.string :detalle_sociosPrestServicio
      t.string :detalle_repreLegalPrestServicios
      t.string :detalle_capacidadInstalada
      t.string :detalle_esquemaContratacion
      t.string :detalle_cuotaUnitaria
      t.string :detalle_repreLegalIMSS
      t.string :detalle_prestadorServicios
      t.string :detalle_areaAdminRespContrato
      t.string :detalle_areaSolicitanteContrat
      t.string :detalle_directora
      t.string :inicioCveGuarderia3
      t.string :fechaUltimaVerificacion
      t.string :fechaCierre
      t.string :domicilio
      t.string :inicioFechaInicio2
      t.string :status
      t.string :inicioFechaInicio4
      t.string :localidad
      t.string :inicioCveGuarderia1
      t.string :ecSocios
      t.string :decision
      t.string :carga
      t.string :inicioCveGuarderia4
      t.string :fechaInicioSuspension
      t.string :resultadosVerificacion
      t.string :inicioFechaInicio1
      t.string :reubicar
      t.string :delegacion
      t.string :comentariosDelegado
      t.string :usuarioActualizacion
      
      t.integer :locality_id

      t.timestamps
    end
  end

  def self.down
    drop_table :nurseries
  end
end
