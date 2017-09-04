
class AuthenticateUser
  def initialize(license_number, cellular_phone, password)
    @license_number = license_number
    @cellular_phone = cellular_phone
    @password = password
  end

  # Service entry point
  def call
    JsonWebToken.encode(user_id: user.id) if user && car
  end

  private

  attr_reader :license_number, :cellular_phone, :password

  # verify user credentials
  def user
    user = User.find_by(cellular_phone: cellular_phone)
    return user if user && user.authenticate(password)
    # raise Authentication error if credentials are invalid
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end

  def car
    car = Car.find_by(license_number: license_number)
    return car if car
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end

