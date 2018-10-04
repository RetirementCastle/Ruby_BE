class AddReportsAssociationToReportType < ActiveRecord::Migration[5.2]
  def change
    create_table "report_types", force: :cascade do |t|
      t.string "Type"
    end
    create_table "reports", force: :cascade do |t|
      t.belongs_to :report_type, index: true
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "IP"
    end
  end
end
