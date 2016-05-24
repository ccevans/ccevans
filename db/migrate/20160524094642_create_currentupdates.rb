class CreateCurrentupdates < ActiveRecord::Migration
  def change
    create_table :currentupdates do |t|
      t.text :info

      t.timestamps
    end
  end
end
