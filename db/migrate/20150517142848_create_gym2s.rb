class CreateGym2s < ActiveRecord::Migration
  def change
    create_table :gym2s do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :website
      t.boolean :weights
      t.boolean :cardio
      t.boolean :pool

      t.timestamps

    end
  end
end
