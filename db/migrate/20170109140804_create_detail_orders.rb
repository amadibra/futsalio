class CreateDetailOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :detail_orders do |t|
      t.integer :id_order
      t.integer :satuan_sewa
      t.integer :id_lapangan
      t.time :lama_sewa
      t.integer :harga_satuan
      t.time :end
      t.time :start
      t.integer :total

      t.timestamps
    end
  end
end
