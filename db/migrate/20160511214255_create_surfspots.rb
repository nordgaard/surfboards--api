class CreateSurfspots < ActiveRecord::Migration
  def change
    create_table :surfspots do |t|
      t.string :name
      t.string :gnar_factor
      t.integer :surfboard_id

      t.timestamps null: true
    end
  end
end
