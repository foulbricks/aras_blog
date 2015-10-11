class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string      :headline,      :null => false
      t.integer     :user_id,       :null => false
      t.text        :introduction
      t.text        :description
      t.boolean     :active,        :default => false
      t.datetime    :publication_date
      t.integer     :blog_id
      t.string      :slug

      t.timestamps
    end
  end
end
