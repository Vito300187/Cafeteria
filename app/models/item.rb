class Item < ApplicationRecord
  has_and_belongs_to_many :carts #связь - сквозная связь между общим заказам и товарами меню
  validates :item, :price, presence: true #Имя,цена,описание не должны быть пустыми
  validates :price, numericality: { greater_than: 1 } #Цена товара должна быть больше 1
end