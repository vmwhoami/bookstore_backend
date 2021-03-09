class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :serialNo
      t.string :name
      t.string :categories

      t.timestamps
    end
  end
end
