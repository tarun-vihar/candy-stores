class Shop < ApplicationRecord
    has_many :shelves, dependent: :destroy
    has_many :candies, dependent: :destroy
end
