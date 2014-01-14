class Sneaker < ActiveRecord::Base
  attr_accessible :base_size, :brand_name, :brand_id, :shoe_size

  belongs_to :brand


end
