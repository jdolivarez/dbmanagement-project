class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :author
      t.string :callnumber
      t.string :volume
      t.text :comments
      t.integer :numofsearch

      t.timestamps
    end
  end
end
