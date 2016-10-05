class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.string :title
      t.string :photo
      t.references :recipe, index: true, foreign_key: true
    end
  end
end
