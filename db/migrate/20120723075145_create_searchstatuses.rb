class CreateSearchstatuses < ActiveRecord::Migration
  def change
    create_table :searchstatuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
