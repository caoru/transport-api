class LoginsController < ApplicationController
  before_action :set_login, only: [:show, :update, :destroy]

  # GET /logins
  def index
    @logins = Login.all
    json_response(@logins)
  end

  # POST /logins
  def create
    @login = Login.create!(login_params)
    json_response(@login, :created)
  end

  # GET /logins/:id
  def show
    json_response(@login)
  end

  # PUT /logins/:id
  def update
    @login.update(login_params)
    head :no_content
  end

  # DELETE /logins/:id
  def destroy
    @login.destroy
    head :no_content
  end

  private

  def login_params
    params.permit(
      :car_id,
      :user_id
    )
  end

  def set_logins
    @login = Login.find(params[:id])
  end
end
