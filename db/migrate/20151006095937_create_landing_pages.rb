class CreateLandingPages < ActiveRecord::Migration
  def change
    create_table :landing_pages do |t|
      t.string      :headline,      :null => false
      t.text        :description
      t.boolean     :active,        :default => false
      t.string      :image

      t.timestamps
    end
  end
end
