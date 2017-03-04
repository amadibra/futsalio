class CreateKota < ActiveRecord::Migration[5.0]
  def change
    create_table :kota do |t|
      t.string :nama

      t.timestamps
    end
  end
end
