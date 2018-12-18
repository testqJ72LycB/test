class CreateMasterMemorials < ActiveRecord::Migration[5.0]
  def change
    create_table :master_memorials do |t|
      t.string :name
      t.integer :age
      t.string :message

      t.timestamps
    end
  end
end
