class Brand < ActiveRecord::Base
  attr_accessible :name, :conversion

  has_many :sneakers
  has_many :asins
end
