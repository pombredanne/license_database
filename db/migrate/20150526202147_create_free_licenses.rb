class CreateFreeLicenses < ActiveRecord::Migration
  def change
    create_table :free_licenses do |t|
      t.string :number

      t.timestamps null: false
    end
  end
end
