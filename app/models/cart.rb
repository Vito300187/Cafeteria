class Cart < ApplicationRecord
  belongs_to :user # Связь - корзина принадлежит юзеру
end
