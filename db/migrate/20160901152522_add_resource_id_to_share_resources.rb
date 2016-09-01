class AddResourceIdToShareResources < ActiveRecord::Migration[5.0]
  def change
    add_column :share_resources, :resource_id, :string
  end
end
