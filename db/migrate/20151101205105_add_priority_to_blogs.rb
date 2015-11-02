class AddPriorityToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :priority, :integer, :default => 0
  end
end
