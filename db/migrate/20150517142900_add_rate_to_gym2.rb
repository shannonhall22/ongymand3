class AddRateToGym2 < ActiveRecord::Migration
  def change
    add_column :gym2s, :rate, :string
  end
end
