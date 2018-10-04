class AddIpToReport < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :IP, :string
  end
end
