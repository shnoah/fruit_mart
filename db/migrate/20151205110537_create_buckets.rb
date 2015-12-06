class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
            
      t.string  :name
      t.string :quantity

      t.timestamps null: false
    end
  end
end
