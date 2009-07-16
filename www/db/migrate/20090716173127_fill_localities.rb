require 'yaml'
require "pp"

class FillLocalities < ActiveRecord::Migration
  
  @yaml = YAML.load_file File.join File.dirname(__FILE__), "..", "..", "..", "dump.yaml"
  
  def self.up
    @yaml.each do |g|
      g.each_pair do |k, v|
        next unless k == 'localidad'
        
        del = Delegation.find_by_name g['delegacion']
        
        loc = Locality.find :first, :conditions => ["name = ? AND delegation_id = ?", v, del.id]
        if loc.nil?
          loc = Locality.new
        end
        
        loc.name = v
        loc.delegation_id = del.id
        loc.save
        puts "#{del.name} (#{del.id}): #{v}"
      end
    end
  end

  def self.down
  end
end
