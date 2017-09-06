class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  before_action :set_user, only: [:show, :update, :destroy]

  # POST /signup
  def create
    @user = User.create!(user_params)
    data = { "user" => @user }
    json_response(data, :created)
  end

  # GET /users
  def index
    @users = User.all
    data = { "users" => @users }
    #json_response(@users)
    json_response(data)
  end

  # GET /users/:id
  def show
    data = { "user" => @user }
    json_response(data)
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
