class CreateSneakersTable < ActiveRecord::Migration
  def change
    create_table :sneakers do |t|
      t.float :base_size
      t.string :brand_name
      t.integer :brand_id
      t.float :shoe_size

    end
  end
end
 