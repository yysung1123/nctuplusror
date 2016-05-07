class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.string :content
      t.timestamps null: false
    end
  end
end
