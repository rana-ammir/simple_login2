class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :city, presence: true, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :address, presence: true
  validates :country, presence: true, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  has_many :books
end
