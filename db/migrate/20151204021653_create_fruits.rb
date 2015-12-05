class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|

      t.integer :code #과일코드
      t.string :name #물품명
      t.string :korname #
      t.integer :price #가격
      t.integer :quantity #수량
      t.string :comment #코멘트
      t.string :address #원산지
      t.string :img #사진

      t.timestamps null: false
    end
  end
end
