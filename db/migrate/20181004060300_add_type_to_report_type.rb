class AddTypeToReportType < ActiveRecord::Migration[5.2]
  def change
    add_column :report_types, :Type, :string
  end
end
