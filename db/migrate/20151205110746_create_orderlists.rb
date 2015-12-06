class CreateOrderlists < ActiveRecord::Migration
  def change
    create_table :orderlists do |t|

#이름, 수량 
      t.string :user_id
      t.string :name
      t.integer :quantity
      

      t.timestamps null: false
    end
  end
end
