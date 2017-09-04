class TransportTypesController < ApplicationController
  before_action :set_transport_type, only: [:show, :update, :destroy]

  # GET /transport_types
  def index
    @transport_types = TransportType.all
    json_response(@transport_types)
  end

  # POST /transport_types
  def create
    @transport_type = TransportType.create!(transport_type_params)
    json_response(@transport_type, :created)
  end

  # GET /transport_types/:id
  def show
    json_response(@transport_type)
  end

  # PUT /transport_types/:id
  def update
    @transport_type.update(transport_type_params)
    head :no_content
  end

  # DELETE /transport_types/:id
  def destroy
    @transport_type.destroy
    head :no_content
  end

  private

  def transport_type_params
    params.permit(
      :name
    )
  end

  def set_transport_types
    @transport_type = TransportType.find(params[:id])
  end
end
