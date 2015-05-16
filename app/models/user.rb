class User < ActiveRecord::Base
	if Rails.env.development?
		# development environment
		has_attached_file 	:profilepic, 
						:styles => { :medium => "250x>", :thumb => "100x100>" }, 
						:default_url => "avatar_default.png"

		validates_attachment_content_type 	:profilepic, 
	  										:content_type => /\Aimage\/.*\Z/
    else
    	# production environment
		has_attached_file 	:profilepic, 
							:styles => { :medium => "250x>", :thumb => "100x100>" }, 
							:default_url => "avatar_default.png",
							:storage => :dropbox,
	    					:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	    					:path => ":style/:id_:filename" # determine uploaded image size (medium, thumb), stored with name "id_extension"
	    					
	  	validates_attachment_content_type 	:profilepic, 
	  										:content_type => /\Aimage\/.*\Z/
  	end				
end
