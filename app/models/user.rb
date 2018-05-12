#require 'devise'
class User < ApplicationRecord
  has_many :orders

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :update_admin

private
def update_admin
  if User.count == 1
    User.first.update_attributes(admin: true)
  end
end