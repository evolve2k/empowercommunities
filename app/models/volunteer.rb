class Volunteer < ActiveRecord::Base
  validates_presence_of :given_names, :surname ,:birth_date , :email , :processed_by , :entered_by , :region
  
  validates_inclusion_of :birth_date,
    :in => Date.civil(1900,1,1) .. Date.today-365,
	:message => "must be after the year 1900 and be at least one year old?!"
	
  validates_format_of :email, 
    :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
	:message => "doesn't look like a proper email address"
end
