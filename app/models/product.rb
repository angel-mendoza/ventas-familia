class Product < ActiveRecord::Base

	validates :title, presence: true, uniqueness:true
	validates :description, presence: true, length: {minimum: 20}
	validates :price, presence: true

	has_attached_file :cover, styles: { medium: "", thumb: "400x300" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

	has_many :comments
	
end
