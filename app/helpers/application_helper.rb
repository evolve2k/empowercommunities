# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  require 'digest/md5'
 
  def current_controller?(c)
    controller.controller_name == c
  end
  
  def gravatar_url_for(email, options = {})   # 'Gravatars on Rails' sourced from http://overhrd.com/?p=28
    url_for({ 
      :gravatar_id => Digest::MD5.hexdigest(email), 
      :host => 'www.gravatar.com',
	  :protocol => 'http://',
	  :only_path => false,
	  :controller => 'avatar.php'
    }.merge(options))  
  end

end