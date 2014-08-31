class Product < ActiveRecord::Base

default_scope {order('name DESC')}
#attr_accessible :description, :image_url, :price, :name, :discount, :category
  validates :name, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
# 
  validates :name, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  validates :discount, numericality: {less_than_or_equal_to: 1}
  end
