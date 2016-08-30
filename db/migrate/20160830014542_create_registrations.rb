class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.boolean :attending
      t.integer :total_guests
      t.text :dietary_restrictions
      t.text :notes

      t.timestamps
    end
  end
end
