class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string        :name,        :null => false
      t.integer       :user_id,     :null => false
      t.string        :image
      t.text          :introduction
      t.boolean       :active,      :default => false
      t.string        :slug

      t.timestamps
    end
  end
end
