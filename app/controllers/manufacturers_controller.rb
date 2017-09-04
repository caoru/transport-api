class ManufacturersController < ApplicationController
  before_action :set_manufacture, only: [:show, :update, :destroy]

  # GET /manufactures
  def index
    @manufacturers = Manufacturer.all
    json_response(@manufacturers)
  end

  # POST /manufacturers
  def create
    @manufacturer = Manufacturer.create!(manufacturer_params)
    json_response(@manufacturer, :created)
  end

  # GET /manufacturer/:id
  def show
    json_response(@manufacturer)
  end

  # PUT /manufacturer/:id
  def update
    @manufacturer.update(manufacturer_params)
    head :no_content
  end

  # DELETE /manufacturer/:id
  def destroy
    @manufacturer.destroy
    head :no_content
  end

  private

  def manufacturer_params
    params.permit(:name)
  end

  def set_manufacturer
    @manufacturer = Manufacturer.find(params[:id])
  end

end
