class AddNameToSurfboard < ActiveRecord::Migration
  def change
    add_column :surfboards, :name, :string
  end
end
