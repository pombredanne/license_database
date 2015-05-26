class CreatePaidLicenses < ActiveRecord::Migration
  def change
    create_table :paid_licenses do |t|
      t.string :number

      t.timestamps null: false
    end
  end
end
