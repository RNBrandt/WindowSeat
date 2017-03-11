class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_many :flights
  after_create :send_welcome

  private

  def send_welcome
    FlightsMailer.welcome_email(self).deliver
  end
end
