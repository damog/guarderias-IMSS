class NurseriesController < ApplicationController
  def show
    @nur = Nursery.find params[:id]
  end
end
