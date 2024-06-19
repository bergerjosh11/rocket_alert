class CreateAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :alerts do |t|
      t.string :location
      t.datetime :alert_time

      t.timestamps
    end
  end
end
