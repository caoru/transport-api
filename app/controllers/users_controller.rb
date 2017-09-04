class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  # POST /signup
  # return authenticated token upon signup
  def create
    @user = User.create!(user_params)
    #auth_token = AuthenticateUser.new(user.cellular_phone, user.password).call
    #response = { message: Message.account_created }
    #json_response(response, :created)
    json_response(@user, :created)
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
end
