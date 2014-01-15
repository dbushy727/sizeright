class Amazoninfo < ActiveRecord::Base
  attr_accessible :asin, :brand_id, :brand_name, :title

  belongs_to :brand
end
