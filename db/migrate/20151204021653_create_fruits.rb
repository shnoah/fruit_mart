class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|

      t.integer :code #과일코드
      t.string :name #물품명
      t.integer :price #가격
      t.integer :quantity #수량
      

      t.timestamps null: false
    end
  end
end
