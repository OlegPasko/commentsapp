class AddAncestryToComment < ActiveRecord::Migration
  def change
    add_column :comments, :ancestry, :string
    add_index :comments, :ancestry
    remove_column :comments, :parent_id
  end
end
