class SiteController < ApplicationController
  
  def home
    
    @del = Delegation.find :all
    
  end
end
