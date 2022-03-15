class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.integer :voltage
      t.string :integer

      t.timestamps
    end
  end
end
