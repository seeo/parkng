class ParksController < ApplicationController

  def index

  end

  def new
    @rangers = Ranger.all
    # so that later we can select the rangers we want to include in the park
  end

  def create
    @park = Park.new(park_params)

    @park.save
    redirect_to @park
  end

  def show
    @park = Park.find(params[:id])
    @ranger = @park.rangers.all    #where(park_id: params[:park_id])
  end

private

  def park_params
    params.require(:park).permit(:name, :description, :ranger_ids => [])
  end

  def ranger_params
    params.require(:ranger).permit(:name, :park_ids => [])
  end

end
