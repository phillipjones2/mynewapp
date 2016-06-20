class AddRoleToParts < ActiveRecord::Migration
  def change
    add_column :parts, :role, :string
  end
end
