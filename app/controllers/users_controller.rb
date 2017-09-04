class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  before_action :set_user, only: [:show, :update, :destroy]

  # POST /signup
  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  # GET /users
  def index
    @users = User.all
    json_response(@users)
  end

  # GET /users/:id
  def show
    json_response(@user)
  end

  # PUT /users/:id
  def update
    @user.update(user_params)
    head :no_content
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    params.permit(
      :name,
      :cellular_phone,
      :password,
      :password_confirmation,
      :company_id,
      :role_id
    )
  end

  def set_users
    @user = User.find(params[:id])
  end
end
