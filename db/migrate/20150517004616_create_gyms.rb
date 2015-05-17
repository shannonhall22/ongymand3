class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :website
      t.string :email
      t.string :rate
      t.string :image_url
      t.boolean :weights
      t.boolean :cardio
      t.boolean :studios
      t.boolean :classes
      t.boolean :pool
      t.boolean :hot_tub
      t.boolean :basketball
      t.boolean :raquetball
      t.boolean :trainer
      t.boolean :sauna
      t.integer :search_id

      t.timestamps

    end
  end
end
