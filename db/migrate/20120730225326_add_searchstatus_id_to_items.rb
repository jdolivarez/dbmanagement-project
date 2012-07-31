class AddSearchstatusIdToItems < ActiveRecord::Migration
  def change
  	add_column :items, :searchstatus_id, :integer
  end
end
