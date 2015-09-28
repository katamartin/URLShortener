class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :short_url, null: false
      t.string :long_url, null: false
      t.timestamps null: false
    end

    add_index :links, :short_url, unique: true
  end
end
