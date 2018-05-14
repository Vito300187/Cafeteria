class Item < ApplicationRecord
  validates :item, :description, :price, presence: true #Имя,цена,описание не должны быть пустыми
  validates :price, numericality: { greater_than: 1 } #Цена товара должна быть больше 1
end