class AddPriceToItems < ActiveRecord::Migration[5.1]
  def up
    add_column :items, :price, :integer, default: 2
  end

  def down
    remove_column :items, :price
  end
end
