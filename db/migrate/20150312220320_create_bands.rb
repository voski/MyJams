class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.text :name, null: false

      t.timestamps null: false
    end

    add_index :bands, :name
  end
end
