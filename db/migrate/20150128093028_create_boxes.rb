class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string      :name
      t.references  :user

      t.timestamps
  end
end
