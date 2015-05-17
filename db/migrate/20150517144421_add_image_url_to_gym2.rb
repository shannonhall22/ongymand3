class AddImageUrlToGym2 < ActiveRecord::Migration
  def change
    add_column :gym2s, :image_url, :string
  end
end
