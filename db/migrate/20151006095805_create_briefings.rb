class CreateBriefings < ActiveRecord::Migration
  def change
    create_table :briefings do |t|
      t.string      :headline,      :null => false
      t.text        :description
      t.boolean     :active,        :default => false
      t.integer     :position,      :default => 1
      t.string      :image

      t.timestamps
    end
  end
end
