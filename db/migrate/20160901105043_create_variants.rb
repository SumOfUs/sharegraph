class CreateVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :variants do |t|
      t.references :share_resource, foreign_key: true
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
