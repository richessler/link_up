class CreateListing < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer  :listing_id
      t.string   :title
      t.text     :description
      t.float    :equity_min
      t.float    :equity_max
      t.integer  :salary_min
      t.integer  :salary_max
      t.text     :thumb_url
      t.text     :company_url
    end
  end
end
