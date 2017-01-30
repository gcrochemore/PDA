class Property < ActiveRecord::Base
  has_many :announcements
  has_many :interactions
  belongs_to :property_picture
end
