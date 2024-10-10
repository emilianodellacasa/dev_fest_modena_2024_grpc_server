class CreateCommands < ActiveRecord::Migration[7.2]
  def change
    create_table :commands do |t|
      t.string :request
      t.string :status
      t.references :device, null: false, foreign_key: true
      t.timestamps
    end
  end
end
