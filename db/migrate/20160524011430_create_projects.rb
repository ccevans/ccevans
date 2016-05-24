class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :info
      t.integer :order

      t.timestamps
    end
  end
end
