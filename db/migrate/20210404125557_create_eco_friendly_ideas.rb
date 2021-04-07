class CreateEcoFriendlyIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :eco_friendly_ideas do |t|
      t.string :title
      t.string :description
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
