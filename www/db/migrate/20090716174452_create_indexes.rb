class CreateIndexes < ActiveRecord::Migration
  def self.up
    
    add_index :delegations, :name
    add_index :localities, :name
    add_index :localities, :delegation_id
    add_index :nurseries, :delegation_id
    add_index :nurseries, :locality_id
    add_index :nurseries, :uid
    add_index :nurseries, :identificador 
    
  end

  def self.down
  end
end
