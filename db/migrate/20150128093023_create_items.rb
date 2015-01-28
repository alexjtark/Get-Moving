class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string      :name
      t.text        :description
      t.integer     :quantity
      t.boolean     :fragile, default: false
      t.references  :box

      t.timestamps
    end
  end
end
