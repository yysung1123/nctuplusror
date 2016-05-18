class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.string :content
      t.datetime :post_time
      t.boolean :bulletin_type
      t.timestamps null: false
    end
  end
end
