class CreatePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :powers do |t|
      t.string :description
      t.integer :level
      t.string :type

      t.timestamps
    end
  end
end
