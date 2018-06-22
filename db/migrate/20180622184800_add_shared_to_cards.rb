class AddSharedToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :shared, :boolean, default: false
  end
end
