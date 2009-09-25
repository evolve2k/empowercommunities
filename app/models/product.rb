class Product < ActiveRecord::Base
  has_many :area_products
  accepts_nested_attributes_for :area_products, :allow_destroy => true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
