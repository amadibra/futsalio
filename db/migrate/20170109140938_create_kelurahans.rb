class CreateKelurahans < ActiveRecord::Migration[5.0]
  def change
    create_table :kelurahans do |t|
      t.string :nama
      t.integer :id_kecamatan

      t.timestamps
    end
  end
end
