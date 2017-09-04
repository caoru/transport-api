class TransportStatesController < ApplicationController
  before_action :set_transport_state, only: [:show, :update, :destroy]

  # GET /transport_states
  def index
    @transport_states = TransportState.all
    json_response(@transport_states)
  end

  # POST /transport_states
  def create
    @transport_state = TransportState.create!(transport_state_params)
    json_response(@transport_state, :created)
  end

  # GET /transport_states/:id
  def show
    json_response(@transport_state)
  end

  # PUT /transport_states/:id
  def update
    @transport_state.update(transport_state_params)
    head :no_content
  end

  # DELETE /transport_states/:id
  def destroy
    @transport_state.destroy
    head :no_content
  end

  private

  def transport_state_params
    params.permit(
      :name
    )
  end

  def set_transport_states
    @transport_state = TransportState.find(params[:id])
  end
end
