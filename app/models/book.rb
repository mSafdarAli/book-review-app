class Book < ApplicationRecord
	belongs_to :user
	belongs_to :category
	
  	has_attached_file :image, :styles => { :book_index => "250x350>", :book_show => "352x475>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/
end
