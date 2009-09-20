class Product < ActiveRecord::Base
  has_many :area_product, :class_name => 'Product'
  accepts_nested_attributes_for :area_product, :allow_destroy => true, :reject_if => :all_blank
end