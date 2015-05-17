class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :zip
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

      t.timestamps

    end
  end
end
