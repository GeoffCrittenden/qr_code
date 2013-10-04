class CreateItemsOrders < ActiveRecord::Migration
  def change
    create_table :items_orders do |t|
      t.belongs_to :order
      t.belongs_to :item
    end
  end
end
