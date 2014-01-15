class Sneaker < ActiveRecord::Base
  attr_accessible :base_size, :brand_name, :brand_id, :shoe_size

  belongs_to :brand

  def self.connect
    req = Vacuum.new
    req.configure(aws_access_key_id: 'AKIAIYQA6IYPMV7GU32A', aws_secret_access_key: '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', associate_tag: 'size05d-20')
    return req
  end
end
