class Cart < ApplicationRecord
  has_and_belongs_to_many :items #связь - сквозная связь между общим заказам и товарами меню
  belongs_to :user # Связь - корзина принадлежит юзеру
end
