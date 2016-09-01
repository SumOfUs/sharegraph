class AddShareCountToShareResource < ActiveRecord::Migration[5.0]
  def change
    add_column :share_resources, :share_count, :integer, default: 0
  end
end
