class Product < ActiveRecord::Base
  belongs_to :category
  has_many :orders
  has_many :users, through: :orders
end
