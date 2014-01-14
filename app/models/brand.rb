class Brand < ActiveRecord::Base
  attr_accessible :name, :conversion

  has_many :sneakers

end
