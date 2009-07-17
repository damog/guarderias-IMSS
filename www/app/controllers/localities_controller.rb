class LocalitiesController < ApplicationController
  def show
    @loc = Locality.find params[:id]
    @nur = Nursery.find :all, :conditions => ["locality_id = ?", @loc.id]
  end
end
