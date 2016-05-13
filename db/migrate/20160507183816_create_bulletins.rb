class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
