class RemoveExpireFromCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :expire, :integer
  end
end
