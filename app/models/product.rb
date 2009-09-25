class Product < ActiveRecord::Base
 validates_inclusion_of :first_production,
    :in => Date.civil(2004,1,1) .. Date.today,
	:message => "Must be a valid production date!"

end
