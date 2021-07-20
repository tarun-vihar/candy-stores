class Shelf < ApplicationRecord
    belongs_to :shop, counter_cache: true
    has_many :candies, dependent: :nullify
end
