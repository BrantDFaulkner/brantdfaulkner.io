class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.text :description
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
