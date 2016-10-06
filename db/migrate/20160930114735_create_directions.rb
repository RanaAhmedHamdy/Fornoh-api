class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.text :title
      t.string :photo
      t.references :recipe, index: true, foreign_key: true
    end
  end
end
