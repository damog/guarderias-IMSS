class DelegationsController < ApplicationController
  
  def show
    @del = Delegation.find params[:id]
    @loc = Locality.find :all, :conditions => ["delegation_id = ?", params[:id]]
  end
end
