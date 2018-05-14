class Order < ApplicationRecord
  belongs_to :user # Связь - Заказы принадлежат юзеру

  validates :value, :price, :user, presence: true #Имя и цена должны быть обязательно заполнено
  validates :value, uniqueness: true # Валидация на прверку уникальности заказа
  validates :price, numericality: { greater_than: 1 } #Цена товара должна быть
  # больше 1
end