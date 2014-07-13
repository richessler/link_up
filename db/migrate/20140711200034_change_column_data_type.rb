class ChangeColumnDataType < ActiveRecord::Migration
  def change
    change_column :basic_profiles, :summary,  :text
  end
end
