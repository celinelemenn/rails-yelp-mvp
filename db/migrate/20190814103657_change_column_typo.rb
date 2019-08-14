class ChangeColumnTypo < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :restautant_id, :restaurant_id
  end
end
