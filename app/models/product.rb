class Product < ApplicationRecord
    validates :title, presence: true
    validates :price, comparison: {greater_than: 0}
end
