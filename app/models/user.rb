class User < ActiveRecord::Base
	has_attached_file :profilepic, :styles => { :medium => "250x>", :thumb => "100x100>" }, :default_url => "avatar_default.png"
  	validates_attachment_content_type :profilepic, :content_type => /\Aimage\/.*\Z/
end
