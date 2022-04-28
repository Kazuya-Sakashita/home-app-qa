class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :name,              null: false
      t.string :school,            null: false
      t.string :address,           null: false
      t.string :department,        null: false
      t.string :phone,             null: false
      
      t.string :favorite,          null: false

      t.string :title,             null: false
      t.text :caption,             null: false

      t.timestamps
    end
  end
end
