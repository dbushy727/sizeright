class CreateAsinsTable < ActiveRecord::Migration
  def change
    create_table :asins do |t|
      t.string :number
      t.integer :brand_id
      
    end
  end
end
