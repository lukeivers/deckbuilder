class CreateHclasses < ActiveRecord::Migration
  def change
    create_table :hclasses do |t|
      t.string :name

      t.timestamps
    end
  end
end
