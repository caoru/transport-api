class TransportsController < ApplicationController
  before_action :set_transport, only: [:show, :update, :destroy]

  # GET /transports
  def index
    @transports = Transport.all
    json_response(@transports)
  end

  # POST /transports
  def create
    @transport = Transport.create!(transport_params)
    json_response(@transport, :created)
  end

  # GET /transports/:id
  def show
    json_response(@transport)
  end

  # PUT /transports/:id
  def update
    @transport.update(transport_params)
    head :no_content
  end

  # DELETE /transports/:id
  def destroy
    @transport.destroy
    head :no_content
  end

  private

  def transport_params
    params.permit(
      :date,
      :departure_time,
      :departure_bay_id,
      :departure_bay_name,
      :car_id,
      :user_id,
      :item_id,
      :transport_type_id,
      :transport_state_id
    )
  end

  def set_transports
    @transport = Transport.find(params[:id])
  end
end
