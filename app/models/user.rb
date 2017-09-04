class User < ApplicationRecord
  has_secure_password

  belongs_to :company
  belongs_to :role

  has_many :login_histories, foreign_key: :user_id
  has_many :transports, foreign_key: :user_id

  validates_presence_of :name, :cellular_phone, :password_digest, :company_id, :role_id
  validates :cellular_phone, uniqueness: true
end
