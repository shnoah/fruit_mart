class CreateOrderlists < ActiveRecord::Migration
  def change
    create_table :orderlists do |t|

#이름, 수량 
      t.string :name
      t.string :quantity

      t.timestamps null: false
    end
  end
end
