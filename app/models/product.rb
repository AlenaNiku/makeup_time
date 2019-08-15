class Product < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :brand
end
