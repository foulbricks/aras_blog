class AddSlugToLandingPage < ActiveRecord::Migration
  def change
    add_column :landing_pages, :slug, :string
  end
end
