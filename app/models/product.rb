class Product < ActiveRecord::Base

  has_many :area_products
  accepts_nested_attributes_for :area_products, :allow_destroy => true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }


 validates_inclusion_of :first_production,
    :in => Date.civil(2004,1,1) .. Date.today,
	:message => "Must be a valid production date!"

  has_many :area_products
  accepts_nested_attributes_for :area_products, :allow_destroy => true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
