class Candy < ApplicationRecord
    belongs_to :shop
    belongs_to :shelf, counter_cache: true, optional: true
end
