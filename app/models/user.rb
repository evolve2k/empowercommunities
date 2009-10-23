class User < ActiveRecord::Base
  acts_as_authentic
  belongs_to :role
  delegate :permissions, :to => :role
  
  def method_missing(method_id, *args)
    if match = matches_dynamic_role_check?(method_id)
	  tokenize_roles(match.captures.first).each do |check|
	    return true if role.name.downcase == check
	  end
	  return false
	elsif match = matches_dynamic_perm_check?(method_id)
	  return true if permissions.find_by_name(match.captures.first)
	else
	  super
	end
  end
  
  private
  
  def matches_dynamic_role_check?(method_id)
    /^is_an?_([a-zA-Z]\w*)\?$/.match(method_id.to_s)
  end

  def matches_dynamic_perm_check?(method_id)
     /^can_([a-zA-Z]\w*)\?$/.match(method_id.to_s)
  end
  
  def tokenize_roles(string_to_split)
    spring_to_split.split(/_or_/)
  end
  
end
