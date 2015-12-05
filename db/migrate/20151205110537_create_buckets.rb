class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
            
      t.string  :user_id,     null: false
      t.string  :code,        null: false
      t.integer :quantity,    null: false

      t.timestamps null: false
    end
  end
end
