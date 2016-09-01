class CreateShareResources < ActiveRecord::Migration[5.0]
  def change
    create_table :share_resources do |t|
      t.string :resource_uri, null: false

      t.timestamps
    end
  end
end
