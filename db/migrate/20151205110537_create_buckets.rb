class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
            
      t.string  :name
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
