class Product < ActiveRecord::Base
  has_one :area_product
  accepts_nested_attributes_for :area_product, :allow_destroy => true, :reject_if => :all_blank
end
