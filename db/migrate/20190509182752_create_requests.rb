class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :biography
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
