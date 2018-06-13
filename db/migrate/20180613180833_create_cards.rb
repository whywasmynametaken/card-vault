class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :category
      t.string :company_name
      t.integer :amount
      t.integer :expire

      t.timestamps
    end
  end
end
