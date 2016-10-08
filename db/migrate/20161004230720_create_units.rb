class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name, :unique => true
    end
  end
end
