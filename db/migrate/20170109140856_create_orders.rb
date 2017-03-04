class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :id_user
      t.boolean :is_expired
      t.integer :kode_order
      t.datetime :tanggal_order

      t.timestamps
    end
  end
end
