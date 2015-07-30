class CreateBleets < ActiveRecord::Migration
  def change
    create_table :bleets do |t|
      t.text :content #string?
      t.references :user

      t.timestamps null: false
    end
  end
end
