class Interaction < ActiveRecord::Base
  belongs_to :interactions_type
  belongs_to :property
end
