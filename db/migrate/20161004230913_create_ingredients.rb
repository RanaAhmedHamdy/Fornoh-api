class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :food
      t.string :quantity
      t.references :unit, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true
    end
  end
end
