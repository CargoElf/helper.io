class CreateReportsTable < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :incident_type
      t.text :description
      t.string :department
      t.string :location

      t.timestamps(null: false)
    end
  end
end
