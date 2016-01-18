class CreateCarRegistrations < ActiveRecord::Migration
  def change
    create_table :car_registrations do |t|
      t.string :owner
      t.string :license
      t.string :month

      t.timestamps null: false
    end
  end
end
