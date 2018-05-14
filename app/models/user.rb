#require 'devise'
class User < ApplicationRecord
  has_many :orders
  has_one :cart

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :update_admin

  private

  #Метод меняет значение первого зарегестрированного пользователя на true for admin
  def update_admin
    self.update_attributes(admin: true) if User.first
  end
end