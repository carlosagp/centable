class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price_cents, default: 0, null: false
      t.integer :cost_cents, default: 0, null: false

      t.timestamps
    end
  end
end
