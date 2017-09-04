class BaysController < ApplicationController
  before_action :set_bay, only: [:show, :update, :destroy]

  # GET /bays
  def index
    @bays = Bay.all
    json_response(@bays)
  end

  # POST /bays
  def create
    @bay = Bay.create!(bay_params)
    json_response(@bay, :created)
  end

  # GET /bays/:id
  def show
    json_response(@bay)
  end

  # PUT /bays/:id
  def update
    @bay.update(bay_params)
    head :no_content
  end

  # DELETE /bays/:id
  def destroy
    @bay.destroy
    head :no_content
  end

  private

  def bay_params
    params.permit(
      :name,
      :province,
      :city,
      :address
    )
  end

  def set_bays
    @bay = Bay.find(params[:id])
  end
end
