class ChangeHeightAndWidthToFeetAndInches < ActiveRecord::Migration
  def change
    rename_column :surfboards, :height, :feet
    rename_column :surfboards, :width, :inches
  end
end
