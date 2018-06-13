class AddExpireToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :expire, :date
  end
end
