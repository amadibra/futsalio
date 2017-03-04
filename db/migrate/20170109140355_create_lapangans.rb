class CreateLapangans < ActiveRecord::Migration[5.0]
  def change
    create_table :lapangans do |t|
      t.string :nama
      t.integer :id_tempat_futsal
      t.integer :satuan_sewa
      t.string :jenis
      t.time :jam_tutup
      t.time :jam_buka
      t.integer :harga_satuan

      t.timestamps
    end
  end
end
