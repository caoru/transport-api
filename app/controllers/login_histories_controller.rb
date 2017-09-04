class LoginHistoriesController < ApplicationController
  before_action :set_login_history, only: [:show, :update, :destroy]

  # GET /login_histories
  def index
    @login_histories = LoginHistory.all
    json_response(@login_histories)
  end

  # POST /login_histories
  def create
    @login_history = LoginHistory.create!(login_history_params)
    json_response(@login_history, :created)
  end

  # GET /login_histories/:id
  def show
    json_response(@login_history)
  end

  # PUT /login_histories/:id
  def update
    @login_history.update(login_history_params)
    head :no_content
  end

  # DELETE /login_histories/:id
  def destroy
    @login_history.destroy
    head :no_content
  end

  private

  def login_history_params
    params.permit(
      :date,
      :login_time,
      :car_id,
      :user_id
    )
  end

  def set_login_histories
    @login_history = LoginHistory.find(params[:id])
  end
end
