class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :original_URL
      t.string :short_URL

      t.timestamps null: false
    end
  end
end
