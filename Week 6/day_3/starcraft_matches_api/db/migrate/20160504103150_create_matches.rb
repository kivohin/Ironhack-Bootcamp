class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :winner_faction
      t.string :loser_faction
      t.integer :duration
      t.date :date

      t.timestamps null: false
    end
  end
end
