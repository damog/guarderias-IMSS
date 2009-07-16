class CreateDelegations < ActiveRecord::Migration
  
  @reg = [
    '1 NOROESTE D.F.'                     ,
    '2 NORESTE D.F.'                      ,
    '3 SUROESTE D.F.'                     ,
    '4 SURESTE D.F.'                      ,
    'AGUASCALIENTES'                      ,
    'BAJA CALIFORNIA NORTE'               ,
    'BAJA CALIFORNIA SUR'                 ,
    'CAMPECHE'                            ,
    'CHIAPAS'                             ,
    'CHIHUAHUA'                           ,
    'COAHUILA'                            ,
    'COLIMA'                              ,
    'DURANGO'                             ,
    'ESTADO DE MEXICO ORIENTE'            ,
    'ESTADO DE MEXICO PONIENTE'           ,
    'GUANAJUATO'                          ,
    'GUERRERO'                            ,
    'HIDALGO'                             ,
    'JALISCO'   ,
    'MICHOACAN'   ,
    'MORELOS'   ,
    'NAYARIT'   ,
    'NUEVO LEON'   ,
    'OAXACA'   ,
    'PUEBLA'   ,
    'QUERETARO'   ,
    'QUINTANA ROO'   ,
    'SAN LUIS POTOSI'   ,
    'SINALOA'   ,
    'SONORA'   ,
    'TABASCO'   ,
    'TAMAULIPAS'   ,
    'TLAXCALA'   ,
    'VERACRUZ NORTE'   ,
    'VERACRUZ SUR'   ,
    'YUCATAN'   ,
    'ZACATECAS'   ,
  ]
  
  def self.up
    
    create_table :delegations do |t|
      t.string :name
      t.timestamps
    end
    
    @reg.each do |r|
      re = Delegation.new
      re.name = r
      unless re.save
        pp r
        exit
      end
    end
  end

  def self.down
    drop_table :delegations
  end
end
