class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.references :variant, foreign_key: true, index: true

      t.string :parent_uuid, index: true
      t.string :uuid, index: true
      t.string :referrer_id

      t.timestamps
    end
  end
end
