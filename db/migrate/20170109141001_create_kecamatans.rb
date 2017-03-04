class CreateKecamatans < ActiveRecord::Migration[5.0]
  def change
    create_table :kecamatans do |t|
      t.string :nama
      t.integer :id_kota

      t.timestamps
    end
  end
end
