require "yaml"; require "pp"

class FillNurseries < ActiveRecord::Migration
  
  @yaml = YAML.load_file File.join File.dirname(__FILE__), "..", "..", "..", "dump.yaml"
  
  def self.up
    
    @yaml.each do |g|
            
      params = {}
      g.each_pair do |k, v|
                
        del = Delegation.find_by_name g['delegacion']
        loc = Locality.find(:first, :conditions => ["name = ? AND delegation_id = ?", g['localidad'], del.id])
        
        if k == 'detalle'
          v.each_pair do |k1, v1|
            next if k1 == 'message' or k1 == 'javaClassName'
            params["#{k}_#{k1}"] = v1
          end
        elsif k == 'delegacion'
          params["delegation_id"] = del.id
        elsif k == 'parameters' or k == 'id'
          # skip
        elsif k == 'localidad'
          params["locality_id"] = loc.id
        else
          params[k] = v
        end
        
        
      end
      
      n = Nursery.new params
      if n.save
        puts "#{n.identificador} done!"

      else
        pp n        
        pp n.errors.full_messages
        exit
      end
    end
    
  end

  def self.down
  end
end
