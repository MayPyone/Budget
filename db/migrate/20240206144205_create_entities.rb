class CreateEntities < ActiveRecord::Migration[7.1]
  def change
    create_table :entities do |t|
      t.string :entity_name 
      t.decimal :amount
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
