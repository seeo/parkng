class RangersController < ApplicationController

  def index

  end

  def new
    @parks = Park.all
    # so that later we can select the park that we want to add rangers to...
  end

  def create
    @ranger = Ranger.new(ranger_params)

    @ranger.save
    redirect_to @ranger
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist
    @ranger = Ranger.find(params[:id])

    if params[:park_id].to_i != @ranger.park.id
      # do something
    end
  end

private

  def ranger_params
    params.require(:ranger).permit(:name, :park_id)
  end
end
