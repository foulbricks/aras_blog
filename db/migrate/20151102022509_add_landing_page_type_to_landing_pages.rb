class AddLandingPageTypeToLandingPages < ActiveRecord::Migration
  def change
    add_column :landing_pages, :landing_page_type_id, :integer
  end
end
