class CreateHauntings < ActiveRecord::Migration[6.1]
  def change
    create_table :hauntings do |t|
      t.belongs_to :ghost, null: false, foreign_key: true
      t.belongs_to :haunted_house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
