class CreateTempatFutsals < ActiveRecord::Migration[5.0]
  def change
    create_table :tempat_futsals do |t|
      t.integer :id_kelurahan
      t.string :nama
      t.string :alamat

      t.timestamps
    end
  end
end
