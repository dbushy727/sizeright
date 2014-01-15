class CreateAmazoninfos < ActiveRecord::Migration
  def change
    create_table :amazoninfos do |t|
      t.string :asin
      t.integer :brand_id
      t.string :brand_name
      t.string :title
      t.timestamps
    end
  end
end
