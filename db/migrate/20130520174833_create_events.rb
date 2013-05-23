class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :street_address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
