class CreateSurfboards < ActiveRecord::Migration
  def change
    create_table :surfboards do |t|
      t.integer :height
      t.integer :width
      t.string :color

      t.timestamps null: true
    end
  end
end
